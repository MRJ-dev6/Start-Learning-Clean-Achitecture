import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/constants_manager.dart';
import 'package:tut_app/presentation/resources/routes_manager.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashViewState();
}

class _SplashViewState extends State<Splashview> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, RoutesManager.onBoardingRoute);
  }

  @override
  initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager
          .primaryColor, // ? this will set the background color of the splash screen to the primary color defined in the color manager class
      body: Center(
        child: Image.asset(
          ImagesAssets.splashLogo,
        ), // ? this will show the splash logo image defined in the assets manager class and we can use it to show the logo of the app or any other image that we want to show to the user when the app is opened.
      ), //! this is the splash screen of the app and we can use it to show the logo of the app or any other image that we want to show to the user when the app is opened.
    );
  }

  @override
  dispose() {
    _timer
        ?.cancel(); // ? this will cancel the timer when the splash screen is disposed to avoid memory leaks and to prevent the timer from running in the background when the splash screen is not visible.
    super.dispose();
  }
}
