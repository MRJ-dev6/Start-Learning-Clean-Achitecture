// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginRequest {
  //? The LoginRequest class is a simple data structure that represents the information needed to perform a login operation. It contains two properties: email and password, both of which are required. This class can be used to encapsulate the login credentials when making a login request to an API or when passing data between different layers of the application. By using a dedicated class for the login request, we can ensure that the data is structured and validated properly, making it easier to manage and maintain the codebase.
  String email;
  String password;
  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
