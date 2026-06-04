import 'package:json_annotation/json_annotation.dart';

@JsonSerializable() //* This annotation tells the code generator which classes to target.
class BaseResponse {
  //? This class serves as a base for other response classes, providing common fields.
  @JsonKey(
    name: "status",
  ) //? This annotation is used to specify the key name in the JSON data.
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class UserResponse {
  //? This class represents the user data structure in the response.
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;
}

@JsonSerializable()
class ContactsResponse {
  //? This class represents the contact information structure in the response.
  @JsonKey(name: "number")
  String? number;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;
}

class AuthResponse extends BaseResponse {
  //? This class represents the authentication response structure.
  @JsonKey(name: "user")
  UserResponse? user;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;
}

//? The above classes are designed to be used with JSON serialization and deserialization, allowing for easy conversion between JSON data and Dart objects. The `BaseResponse` class provides common fields for all responses, while `UserResponse` and `ContactsResponse` represent specific data structures for user and contact information, respectively. The `AuthResponse` class extends `BaseResponse` to include additional fields specific to authentication responses.
//* whats the json_serializable package does :
//? The `json_serializable` package is a code generator for JSON serialization and deserialization in Dart. It allows you to annotate your classes with `@JsonSerializable()` and then generates code to convert between Dart objects and JSON data. This helps to reduce boilerplate code and makes it easier to work with JSON data in a structured way. By using this package, you can easily serialize your Dart objects to JSON for API requests and deserialize JSON responses back into Dart objects, improving the maintainability and readability of your code.
//* Benefits of using the `json_serializable` package:
//? 1. It reduces boilerplate code by generating serialization and deserialization logic automatically.
//? 2. It improves code maintainability by centralizing the JSON conversion logic in generated code.
//? 3. It makes it easier to work with JSON data by providing a structured way to convert between Dart objects and JSON.
