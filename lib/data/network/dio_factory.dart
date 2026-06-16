import 'package:dio/dio.dart';
import 'package:tut_app/app/constants.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String defualtLanguage = "language";

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration _timeOut = Constants.timeOut;
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: "Token here",
      defualtLanguage: Constants.defaultLanguage,
    };

    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: headers,
      receiveTimeout: _timeOut,
      sendTimeout: _timeOut,
    );
    return dio;
  }
}
