import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tut_app/app/app_prefs.dart';
import 'package:tut_app/app/constants.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String defualtLanguage = "language";

class DioFactory {
  final AppPreferences _appPreferences;
  DioFactory(this._appPreferences);
  Future<Dio> getDio() async {
    Dio dio = Dio();
    String language = await _appPreferences.getAppLanguge();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: Constants.token,
      defualtLanguage: language,
    };

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      receiveTimeout: Constants.timeOut,
      sendTimeout: Constants.timeOut,
    );

    if (!kReleaseMode) {
      //* this will add the pretty dio logger interceptor to the dio instance, which will log the request and response in a pretty format, and this will only be added in debug mode, not in release mode.
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          responseHeader: true,
          requestBody: true,
        ),
      );
    }
    return dio;
  }
}

//* What is the benefit of using pretty dio logger package in flutter ?
//1. It provides a simple and easy way to log the request and response in a pretty format, which makes it easier to debug the API calls and to handle the logging of the API calls in a more structured way and to reduce boilerplate code when logging the API calls in the app.
//2. It allows for easy customization of the logging format and the level of detail that is logged, which makes it easier to debug the API calls and to handle the logging of the API calls in a more structured way and to reduce boilerplate code when logging the API calls in the app.
//3. It supports various logging levels (debug, info, warning, error, etc.) and allows for easy filtering of the logs based on the logging level, which makes it easier to debug the API calls and to handle the logging of the API calls in a more structured way and to reduce boilerplate code when logging the API calls in the app.
