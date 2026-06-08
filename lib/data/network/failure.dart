// ignore_for_file: public_member_api_docs, sort_constructors_first
class Failure {
  //? The Failure class is a simple data structure that represents an error or failure in the application. It contains two properties: code and message. The code is typically an integer that represents the type of error (e.g., HTTP status code), while the message is a string that provides a human-readable description of the error. This class can be used throughout the application to standardize error handling and make it easier to manage and display error messages to the user.
  int code; //? code
  String message; //? message
  Failure({
    required this.code,
    required this.message,
  });
}
