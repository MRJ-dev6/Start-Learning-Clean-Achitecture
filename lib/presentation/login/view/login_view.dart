import 'package:flutter/material.dart';
import 'package:tut_app/presentation/login/viewModel/login_viewmodel.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/routes_manager.dart';
import 'package:tut_app/presentation/resources/strings_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //? create login view model instance
  final LoginViewModel _loginViewModel = LoginViewModel();
  //? create username and password text editing controllers
  final TextEditingController _userNamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  //? create form key to validate the form
  final _formkey = GlobalKey<FormState>();

  void _bind() {
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
      backgroundColor: ColorManager.white,
      body: _getContentWidget(),
    );
  }

  Widget _getContentWidget() {
    //? this is the method to get the content widget
    return Container(
      padding: EdgeInsets.only(top: AppPadding.p70), //? padding from top
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
                height: AppSize.s20,
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
                      decoration: InputDecoration(
                        hintText: AppStrings.username,
                        labelText: AppStrings.username,
                        errorText: (snapshot.data ?? true)
                            ? null //? if valid return null
                            : AppStrings
                                  .usernameError, //? if empty return error message
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: AppSize.s20,
              ), //? add space between username text field and password text field
              Padding(
                //? add padding to the text field
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: StreamBuilder<bool>(
                  //? this is the stream builder to listen to the password stream
                  stream: _loginViewModel.outIsPasswordValid,
                  builder: (context, snapshot) {
                    //? this is the builder to build the text field based on the stream
                    return TextFormField(
                      //? this is the text field for password
                      controller:
                          _passwordcontroller, //? this is the controller for password text field
                      keyboardType: TextInputType
                          .visiblePassword, //? this is the keyboard type for password text field
                      decoration: InputDecoration(
                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                        errorText: (snapshot.data ?? true)
                            ? null //? if valid return null
                            : AppStrings
                                  .passwordError, //? if empty return error message
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: AppSize.s30),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: AppPadding.p30,
                ),
                child: StreamBuilder<bool>(
                  stream: _loginViewModel.outAreAllValid,
                  builder: (context, snapshot) {
                    return SizedBox(
                      height: AppSize.s40,
                      width: double.infinity,
                      child: ElevatedButton(
                        //? if all the inputs are valid then enable the button else disable it
                        onPressed: (snapshot.data ?? false)
                            ? () => _loginViewModel.login()
                            : null,
                        child: Text(AppStrings.login),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p20,
                  vertical: AppPadding.p12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.forgotPasswordRoute,
                        );
                      },
                      child: Text(
                        AppStrings.forgetPassword,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RoutesManager.registerRoute,
                        );
                      },
                      child: Text(
                        AppStrings.register,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
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
