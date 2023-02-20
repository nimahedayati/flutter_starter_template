import 'package:dartz/dartz.dart';
import 'package:flutter_starter_template/data/network/failure.dart';
import 'package:flutter_starter_template/data/repository/repository.dart';
import 'package:flutter_starter_template/domain/model/home_model.dart';
import 'package:flutter_starter_template/domain/usecase/base_usecase.dart';

class HomeUseCase extends BaseUseCase<void, HomeModel> {
  final Repository _repository;

  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, HomeModel>> execute(void input) async {
    return await _repository.getHome();
  }
}
