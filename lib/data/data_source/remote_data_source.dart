import 'package:flutter_starter_template/data/network/app_api.dart';
import 'package:flutter_starter_template/data/request/login_request.dart';
import 'package:flutter_starter_template/data/responses/authentication_response.dart';
import 'package:flutter_starter_template/data/responses/home_response.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
  Future<HomeResponse> getHome();
}

class RemoteDataSourceImplementer implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImplementer(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(loginRequest.email, loginRequest.password, "", "");
  }

  @override
  Future<HomeResponse> getHome() async {
    return await _appServiceClient.getHome();
  }
}
