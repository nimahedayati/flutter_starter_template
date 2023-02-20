import 'package:dio/dio.dart';
import 'package:flutter_starter_template/data/responses/authentication_response.dart';
import 'package:flutter_starter_template/data/responses/home_response.dart';
import 'package:flutter_starter_template/data/network/app_api_impl.dart';

abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = AppServiceClientImplementer;

  Future<AuthenticationResponse> login(String email, String password, String imei, String deviceType);

  Future<HomeResponse> getHome();
}
