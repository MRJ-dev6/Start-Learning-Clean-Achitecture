import 'package:flutter/material.dart';
import 'package:tut_app/domain/usecase/login_usecase.dart';
import 'package:tut_app/presentation/login/viewModel/login_viewmodel.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //? create login view model instance
  final LoginViewModel _loginViewModel = LoginViewModel(_loginUsecase);
  //? create username and password text editing controllers
  final TextEditingController _userNamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  //? create form key to validate the form
  final _formkey = GlobalKey<FormState>();

  _bind() {
    //? start binding to view model
    _loginViewModel.start();

    //* start listening to username text field
    _userNamecontroller.addListener(
      () => _loginViewModel.setUserName(_userNamecontroller.text),
    );

    //! start listening to password text field
    _passwordcontroller.addListener(
      () => _loginViewModel.setPassword(_passwordcontroller.text),
    );
  }

  @override
  void initState() {
    _bind(); //? start binding to view model
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Container(),
    );
  }

  Widget _getContentWidget() {
    //? this is the method to get the content widget
    return Container(
      padding: EdgeInsets.only(top: AppPadding.p100), //? padding from top
      color: ColorManager.white,
      child: SingleChildScrollView(
        //? this is the method to make the content scrollable
        child: Form(
          //? helps to validate the form
          key: _formkey, //? this is the key to validate the form
          child: Column(
            children: [
              Center(
                child: Image.asset(ImagesAssets.splashLogo),
              ), //? display the logo
              SizedBox(
                height: AppSize.s30,
              ), //? add space between logo and text field
              Padding(
                //? add padding to the text field
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: StreamBuilder<bool>(
                  //? this is the stream builder to listen to the username stream
                  stream: _loginViewModel.outIsUserNameValid,
                  builder: (context, snapshot) {
                    //? this is the builder to build the text field based on the stream
                    return TextFormField(
                      //? this is the text field for username
                      controller:
                          _userNamecontroller, //? this is the controller for username text field
                      keyboardType: TextInputType
                          .emailAddress, //? this is the keyboard type for username text field
                      //todo : decorate the text field
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _loginViewModel.dispose();
    super.dispose();
  }
}
