import 'package:dartz/dartz.dart';
import 'package:flutter_starter_template/data/network/failure.dart';
import 'package:flutter_starter_template/data/request/login_request.dart';
import 'package:flutter_starter_template/domain/model/authentication_model.dart';
import 'package:flutter_starter_template/domain/model/home_model.dart';

abstract class Repository {
  Future<Either<Failure, AuthenticationModel>> login(LoginRequest loginRequest);
  Future<Either<Failure, HomeModel>> getHome();
}
