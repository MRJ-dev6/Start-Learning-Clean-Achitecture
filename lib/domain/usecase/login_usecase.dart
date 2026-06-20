// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:tut_app/data/network/failure.dart';
import 'package:tut_app/data/network/requests.dart';
import 'package:tut_app/domain/models/models.dart';
import 'package:tut_app/domain/repository/repository.dart';
import 'package:tut_app/domain/usecase/base_usecase.dart';

class LoginUsecase implements BaseUsecase<LoginUsecaseInput, Auth> {
  final Repository _repository;
  LoginUsecase(this._repository);
  @override
  Future<Either<Failure, Auth>> excute(LoginUsecaseInput input) async {
    return await _repository.login(
      LoginRequest(email: input.email, password: input.password),
    );
  }
}

class LoginUsecaseInput {
  String email;
  String password;
  LoginUsecaseInput(this.email, this.password);
}
