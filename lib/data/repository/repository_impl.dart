import 'package:dartz/dartz.dart';
import 'package:flutter_starter_template/data/data_source/local_data_source.dart';
import 'package:flutter_starter_template/data/data_source/remote_data_source.dart';
import 'package:flutter_starter_template/data/mapper/mapper.dart';
import 'package:flutter_starter_template/data/network/error_handler.dart';
import 'package:flutter_starter_template/data/network/failure.dart';
import 'package:flutter_starter_template/data/network/network_info.dart';
import 'package:flutter_starter_template/data/repository/repository.dart';
import 'package:flutter_starter_template/data/request/login_request.dart';
import 'package:flutter_starter_template/domain/model/authentication_model.dart';
import 'package:flutter_starter_template/domain/model/home_model.dart';

class RepositoryImplementer extends Repository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImplementer(this._remoteDataSource, this._localDataSource, this._networkInfo);

  @override
  Future<Either<Failure, AuthenticationModel>> login(LoginRequest loginRequest) async {
    if (!await _networkInfo.isConnected) {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }

    try {
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == ApiInternalStatus.SUCCESS) {
        return Right(response.toDomain());
      } else {
        return Left(Failure(response.status ?? ApiInternalStatus.FAILURE, response.message ?? ResponseMessage.DEFAULT));
      }
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  Future<Either<Failure, HomeModel>> getHome() async {
    try {
      final response = await _localDataSource.getHome();
      return Right(response.toDomain());
    } catch (_) {}

    if (!await _networkInfo.isConnected) {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }

    try {
      final response = await _remoteDataSource.getHome();

      if (response.status == ApiInternalStatus.SUCCESS) {
        _localDataSource.saveHomeToCache(response);
        return Right(response.toDomain());
      } else {
        return Left(Failure(response.status ?? ApiInternalStatus.FAILURE, response.message ?? ResponseMessage.DEFAULT));
      }
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
