import 'package:dartz/dartz.dart';
import 'package:tut_app/data/network/failure.dart';
import 'package:tut_app/data/network/requests.dart';
import 'package:tut_app/domain/models/models.dart';

abstract class Repository {
  //? The Repository interface defines a contract for the data layer of the application. It abstracts away the details of how data is fetched or stored, allowing the rest of the application to interact with it without needing to know about the underlying implementation. This promotes a clean architecture and makes it easier to maintain and test the codebase.
  Future<Either<Failure, Auth>> login(
    LoginRequest loginRequest,
  ); //? here i used either to handle the success and failure cases of the login operation. The method returns a Future that will complete with either a Failure (in case of an error) or an Auth object (in case of a successful login). This approach allows for better error handling and makes it easier to manage the flow of data in the application.
}
