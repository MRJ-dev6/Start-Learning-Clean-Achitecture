import 'package:tut_app/presentation/base/base_viewmodel.dart';

class LoginViewModel extends BaseViewmodel
    implements LoginViewmodelInputs, LoginViewmodelOutputs {
  //? inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  // TODO: implement inputPassword
  Sink<dynamic> get inputPassword => throw UnimplementedError();

  @override
  // TODO: implement inputUserName
  Sink<dynamic> get inputUserName => throw UnimplementedError();

  @override
  setPassword(String password) {
    // TODO: implement setPassword
    throw UnimplementedError();
  }

  @override
  setUserName(String userName) {
    // TODO: implement setUserName
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  //! outputs
  @override
  // TODO: implement outIsPasswordValid
  Stream<bool> get outIsPasswordValid => throw UnimplementedError();

  @override
  // TODO: implement outIsUserNameValid
  Stream<bool> get outIsUserNameValid => throw UnimplementedError();
}

abstract class LoginViewmodelInputs {
  setUserName(String userName);
  setPassword(String password);
  login();

  Sink get inputUserName;
  Sink get inputPassword;
}

abstract class LoginViewmodelOutputs {
  Stream<bool> get outIsUserNameValid;
  Stream<bool> get outIsPasswordValid;
}
