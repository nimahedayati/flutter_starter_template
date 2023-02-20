import 'package:dartz/dartz.dart';
import 'package:flutter_starter_template/data/network/failure.dart';
import 'package:flutter_starter_template/data/repository/repository.dart';
import 'package:flutter_starter_template/data/request/login_request.dart';
import 'package:flutter_starter_template/domain/model/authentication_model.dart';
import 'package:flutter_starter_template/domain/usecase/base_usecase.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, AuthenticationModel> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(LoginUseCaseInput input) async {
    return await _repository.login(LoginRequest(input.email, input.password, "", ""));
  }
}

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput(this.email, this.password);
}
