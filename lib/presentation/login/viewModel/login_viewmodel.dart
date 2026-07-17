import 'dart:async';

import 'package:tut_app/presentation/base/base_viewmodel.dart';

class LoginViewModel extends BaseViewmodel
    implements LoginViewmodelInputs, LoginViewmodelOutputs {
  //* this is the viewmodel for login screen

  //? stream controllers
  final StreamController _userNamestreamController =
      StreamController<String>.broadcast();
  final StreamController _passwordSreamController =
      StreamController<String>.broadcast();
  //? inputs
  @override
  void dispose() {
    //? dispose the streams
    _passwordSreamController.close();
    _userNamestreamController.close();
  }

  @override
  void start() {
    //? start the viewmodel
    // TODO: implement start
  }

  @override
  //? this is the input for password
  Sink<dynamic> get inputPassword => _passwordSreamController.sink;

  @override
  //? this is the input for username
  Sink<dynamic> get inputUserName => _userNamestreamController.sink;

  @override
  setPassword(String password) {
    //? this is the method to set the password
    // TODO: implement setPassword
    throw UnimplementedError();
  }

  @override
  setUserName(String userName) {
    //? this is the method to set the username
    // TODO: implement setUserName
    throw UnimplementedError();
  }

  @override
  login() {
    //? this is the method to login
    // TODO: implement login
    throw UnimplementedError();
  }

  //! outputs
  @override
  //? this is the output for password validation
  Stream<bool> get outIsPasswordValid => _passwordSreamController.stream.map(
    (password) => _isPasswordValid(password),
  );

  @override
  //? this is the output for username validation
  Stream<bool> get outIsUserNameValid => _userNamestreamController.stream.map(
    (userName) => _isUserNameValid(userName),
  );
}

bool _isPasswordValid(String password) {
  //? password validation function
  return password.isNotEmpty;
}

bool _isUserNameValid(String userName) {
  //* username validation function
  return userName.isNotEmpty;
}

abstract class LoginViewmodelInputs {
  //? this is the LoginViewmodelInputs interface which will be implemented by the LoginViewModel class
  setUserName(String userName);
  setPassword(String password);
  login();

  Sink get inputUserName;
  Sink get inputPassword;
}

abstract class LoginViewmodelOutputs {
  //? this is the LoginViewmodelOutputs interface which will be implemented by the LoginViewModel class
  Stream<bool> get outIsUserNameValid;
  Stream<bool> get outIsPasswordValid;
}
