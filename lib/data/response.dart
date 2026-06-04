// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable() //* This annotation tells the code generator which classes to target.
class BaseResponse {
  //? This class serves as a base for other response classes, providing common fields.
  @JsonKey(
    name: "status",
  ) //? This annotation is used to specify the key name in the JSON data.
  int? status;
  @JsonKey(name: "message")
  String? message;
  BaseResponse({this.status, this.message});

  //? fromJson
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  //* fromJson is a factory constructor that creates an instance of the class from a JSON map. The code generator will generate the implementation of this constructor based on the fields and annotations in the class.
  //? toJson
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
  //* toJson is a method that converts an instance of the class to a JSON map. The code generator will generate the implementation of this method based on the fields and annotations in the class.
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
  UserResponse({this.id, this.name, this.numOfNotifications});

  //? fromJson
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
  //? toJson
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
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
  ContactsResponse({this.number, this.email, this.link});

  //? fromJson
  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
  //? toJson
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

class AuthResponse extends BaseResponse {
  //? This class represents the authentication response structure.
  @JsonKey(name: "user")
  UserResponse? user;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;
  AuthResponse({this.user, this.contacts});

  //? fromJson
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
  //? toJson
  @override
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

//? The above classes are designed to be used with JSON serialization and deserialization, allowing for easy conversion between JSON data and Dart objects. The `BaseResponse` class provides common fields for all responses, while `UserResponse` and `ContactsResponse` represent specific data structures for user and contact information, respectively. The `AuthResponse` class extends `BaseResponse` to include additional fields specific to authentication responses.
//* whats the json_serializable package does :
//? The `json_serializable` package is a code generator for JSON serialization and deserialization in Dart. It allows you to annotate your classes with `@JsonSerializable()` and then generates code to convert between Dart objects and JSON data. This helps to reduce boilerplate code and makes it easier to work with JSON data in a structured way. By using this package, you can easily serialize your Dart objects to JSON for API requests and deserialize JSON responses back into Dart objects, improving the maintainability and readability of your code.
//* Benefits of using the `json_serializable` package:
//? 1. It reduces boilerplate code by generating serialization and deserialization logic automatically.
//? 2. It improves code maintainability by centralizing the JSON conversion logic in generated code.
//? 3. It makes it easier to work with JSON data by providing a structured way to convert between Dart objects and JSON.
//* we will generate the code for the above classes by running the following command in the terminal :
//? flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
