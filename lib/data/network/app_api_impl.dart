import 'package:dio/dio.dart';
import 'package:flutter_starter_template/data/network/app_api.dart';
import 'package:flutter_starter_template/data/responses/authentication_response.dart';
import 'package:flutter_starter_template/data/responses/home_response.dart';

class AppServiceClientImplementer implements AppServiceClient {
  final Dio _dio;

  AppServiceClientImplementer(this._dio, {String? baseUrl}) {
    _dio.options.baseUrl = baseUrl ?? _dio.options.baseUrl;
  }

  @override
  Future<AuthenticationResponse> login(email, password, imei, deviceType) async {
    final data = {'email': email, 'password': password, 'imei': imei, 'deviceType': deviceType};
    final result = await _dio.post('/customers/login', data: data);
    return AuthenticationResponse.fromJson(result.data);
  }

  @override
  Future<HomeResponse> getHome() async {
    final result = await _dio.get('/home');
    return HomeResponse.fromJson(result.data);
  }
}
