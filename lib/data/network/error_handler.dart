import 'package:dio/dio.dart';
import 'package:tut_app/app/constants.dart';
import 'package:tut_app/data/network/failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;
  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSource.defualt.getFailure();
    }
  }
}

Failure _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectionTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.recieveTimeout.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.badCertificate.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return Failure(
          code: error.response?.statusCode ?? Constants.zero,
          message: error.response?.statusMessage ?? Constants.empty,
        );
      } else {
        return DataSource.defualt.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.noInternetConnection.getFailure();
    case DioExceptionType.unknown:
      return DataSource.defualt.getFailure();
  }
}

enum DataSource {
  success,
  badRequest,
  noContent,
  forbidden,
  unAuthorized,
  notFound,
  internelServerError,
  connectionTimeout,
  cancel,
  recieveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defualt,
  badCertificate,
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(
          code: ResponseCode.success,
          message: ResponseMessage.success,
        );
      case DataSource.badRequest:
        return Failure(
          code: ResponseCode.badRequest,
          message: ResponseMessage.badRequest,
        );
      case DataSource.noContent:
        return Failure(
          code: ResponseCode.noContent,
          message: ResponseMessage.noContent,
        );
      case DataSource.forbidden:
        return Failure(
          code: ResponseCode.forbidden,
          message: ResponseMessage.forbidden,
        );
      case DataSource.unAuthorized:
        return Failure(
          code: ResponseCode.unAuthorized,
          message: ResponseMessage.unAuthorized,
        );
      case DataSource.notFound:
        return Failure(
          code: ResponseCode.notFound,
          message: ResponseMessage.notFound,
        );
      case DataSource.internelServerError:
        return Failure(
          code: ResponseCode.internelServerError,
          message: ResponseMessage.internelServerError,
        );
      case DataSource.connectionTimeout:
        return Failure(
          code: ResponseCode.connectionTimeout,
          message: ResponseMessage.connectionTimeout,
        );
      case DataSource.cancel:
        return Failure(
          code: ResponseCode.cancel,
          message: ResponseMessage.cancel,
        );
      case DataSource.recieveTimeout:
        return Failure(
          code: ResponseCode.recieveTimeout,
          message: ResponseMessage.recieveTimeout,
        );
      case DataSource.sendTimeout:
        return Failure(
          code: ResponseCode.sendTimeout,
          message: ResponseMessage.sendTimeout,
        );
      case DataSource.cacheError:
        return Failure(
          code: ResponseCode.cacheError,
          message: ResponseMessage.cacheError,
        );
      case DataSource.noInternetConnection:
        return Failure(
          code: ResponseCode.noInternetConnection,
          message: ResponseMessage.noInternetConnection,
        );
      case DataSource.defualt:
        return Failure(
          code: ResponseCode.defualt,
          message: ResponseMessage.defualt,
        );
      case DataSource.badCertificate:
        return Failure(
          code: ResponseCode.badCertificate,
          message: ResponseMessage.badCertificate,
        );
    }
  }
}

class ResponseCode {
  static const int success = 200; //? success with data
  static const int noContent = 201; //? success with no data
  static const int badRequest =
      400; //? failure, API rejected the request, usually due to validation errors
  static const int unAuthorized =
      401; //? failure, user is not authorized to perform this action
  static const int forbidden =
      403; //? failure, user is authenticated but does not have permission to perform this action
  static const int notFound =
      404; //? failure, the requested resource was not found
  static const int internelServerError =
      500; //? failure, something went wrong on the server side
  //* local status code
  static const int connectionTimeout = -1; //? failure, connection timeout error
  static const int cancel = -2; //? failure, request was cancelled
  static const int recieveTimeout = -3; //? failure, receive timeout error
  static const int sendTimeout = -4; //? failure, send timeout error
  static const int cacheError = -5; //? failure, cache error
  static const int noInternetConnection =
      -6; //? failure, no internet connection
  static const int badCertificate = -7; //? failure, bad certificate error
  static const int defualt = 00;
}

class ResponseMessage {
  static const String success = "Success"; //? success with data
  static const String noContent =
      "Success with no content"; //? success with no data
  static const String badRequest =
      "Bad Request, try again later"; //? failure, API rejected the request, usually due to validation errors
  static const String unAuthorized =
      "User is not authorized, try again later"; //? failure, user is not authorized to perform this action
  static const String forbidden =
      "Forbidden request, try again later"; //? failure, user is authenticated but does not have permission to perform this action
  static const String notFound =
      "Not found, try again later"; //? failure, the requested resource was not found
  static const String internelServerError =
      "Something went wrong, try again later"; //? failure, something went wrong on the server side
  //* local status message
  static const String connectionTimeout =
      "Connection timeout, try again later"; //? failure, connection timeout error
  static const String cancel =
      "Request was cancelled, try again later"; //? failure, request was cancelled
  static const String recieveTimeout =
      "Receive timeout, try again later"; //? failure, receive timeout error
  static const String sendTimeout =
      "Send timeout, try again later"; //? failure, send timeout error
  static const String cacheError =
      "Cache error, try again later"; //? failure, cache error
  static const String noInternetConnection =
      "No internet connection, try again later"; //? failure, no internet connection
  static const String badCertificate =
      "Bad certificate, try again later"; //? failure, bad certificate error
  static const String defualt = "Something went wrong, try again later";
}

//* what i done in this file :
// 1. I created an enum called DataSource to represent the different types of data sources that we can have in our app, such as success, badRequest, noContent, forbidden, unAuthorized, notFound, internelServerError, connectionTimeout, cancel, recieveTimeout, sendTimeout, cacheError, noInternetConnection.
// 2. I created an extension on the DataSource enum called DataSourceExtension to add a method called getFailure() that will return a Failure object based on the value of the DataSource enum. This method will be used to convert the DataSource enum to a Failure object that can be used in the app to handle the errors in a more structured way and to reduce boilerplate code when handling errors in the app.
// 3. I created a class called ResponseCode to represent the different response codes that we can have in our app, such as success, noContent, badRequest, unAuthorized, forbidden, notFound, internelServerError, connectionTimeout, cancel, recieveTimeout, sendTimeout, cacheError, noInternetConnection. This class will be used to define the response codes that we can have in our app and to make it easier to handle the response codes in a more structured way and to reduce boilerplate code when handling response codes in the app.
// 4. I created a class called ResponseMessage to represent the different response messages that we can have in our app, such as success, noContent, badRequest, unAuthorized, forbidden, notFound, internelServerError, connectionTimeout, cancel, recieveTimeout, sendTimeout, cacheError, noInternetConnection. This class will be used to define the response messages that we can have in our app and to make it easier to handle the response messages in a more structured way and to reduce boilerplate code when handling response messages in the app.
//? The error_handler.dart file is responsible for handling the errors in the app in a more structured way and to reduce boilerplate code when handling errors in the app. It defines the DataSource enum to represent the different types of data sources that we can have in our app, and it defines the ResponseCode and ResponseMessage classes to represent the different response codes and response messages that we can have in our app. The DataSource enum has an extension called DataSourceExtension that adds a method called getFailure() to convert the DataSource enum to a Failure object that can be used in the app to handle the errors in a more structured way and to reduce boilerplate code when handling errors in the app. By using this error handling approach, we can easily handle the errors in our app and to provide a better user experience by showing appropriate error messages to the users based on the type of error that occurred.
//* what is the benefit of using this error handling approach :
// 1. It helps to handle the errors in a more structured way and to reduce boilerplate code when handling errors in the app.
// 2. It helps to provide a better user experience by showing appropriate error messages to the users based on the type of error that occurred.
// 3. It helps to make the code more maintainable and testable by centralizing the error handling logic in one place and by using a consistent approach to handle errors in the app.
// 4. It helps to make the code more reusable and it helps to make the code more scalable by using a consistent approach to handle errors in the app and by defining the different types of errors that we can have in our app in a more structured way using the DataSource enum and the ResponseCode and ResponseMessage classes.
