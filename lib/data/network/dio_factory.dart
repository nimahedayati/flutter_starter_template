import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_starter_template/app/app_preferences.dart';
import 'package:flutter_starter_template/app/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final AppPreferences _appPreferences;

  DioFactory(this._appPreferences);

  Future<Dio> getDio() async {
    Dio dio = Dio();
    String token = await _appPreferences.getUserToken();
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: Headers.jsonContentType,
      HttpHeaders.acceptHeader: Headers.jsonContentType,
      HttpHeaders.authorizationHeader: token
    };

    Duration timeOut = const Duration(seconds: 60);
    dio.options = BaseOptions(baseUrl: Constants.BASEURL, connectTimeout: timeOut, receiveTimeout: timeOut, headers: headers);

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseHeader: true));
    }

    return dio;
  }
}
