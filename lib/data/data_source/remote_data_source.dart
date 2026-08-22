// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tut_app/data/network/app_api.dart';
import 'package:tut_app/data/network/requests.dart';
import 'package:tut_app/data/response/response.dart';

abstract class RemoteDataSource {
  //? The RemoteDataSource interface defines a contract for the remote data source of the application.
  Future<AuthResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceoimpl implements RemoteDataSource {
  //? The RemoteDataSourceoimpl class is an implementation of the RemoteDataSource interface.
  final AppServiceClient
  _appServiceClient; //? creating a private instance of the AppServiceClient to handle the API calls.
  RemoteDataSourceoimpl(this._appServiceClient);
  @override
  Future<AuthResponse> login(LoginRequest loginRequest) async {
    //? The login method takes a LoginRequest object as a parameter and returns a Future that resolves to an AuthResponse.
    return await _appServiceClient.login(loginRequest);
  }
}
//? The RemoteDataSourceoimpl class is responsible for making the actual API call to the login endpoint using the AppServiceClient. 