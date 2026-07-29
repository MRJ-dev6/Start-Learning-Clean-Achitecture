import 'package:flutter/material.dart';
import 'package:tut_app/app/di.dart';
import 'package:tut_app/presentation/forgotPassword/forgot_password.dart';
import 'package:tut_app/presentation/login/view/login_view.dart';
import 'package:tut_app/presentation/main/main_view.dart' show MainView;
import 'package:tut_app/presentation/onBoarding/view/on_boarding_view.dart';
import 'package:tut_app/presentation/register/register_view.dart';
import 'package:tut_app/presentation/resources/strings_manager.dart';
import 'package:tut_app/presentation/splash/splash_view.dart';
import 'package:tut_app/presentation/storeDetails/store_details.dart';

class RoutesManager {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const Splashview());
      case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case RoutesManager.loginRoute:
        initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RoutesManager.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RoutesManager.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case RoutesManager.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetails());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}

// ! this class is used to manage the routes of the app and to avoid hardcoding the routes in the code and to make it easier to change the routes in the future if needed.
// ? Benefit of using a route manager class :
// 1. It helps to keep the code organized and maintainable.
// 2. It allows us to change the routes of the app in one place, and it will be reflected in all the places where we use the routes of the app.
// 3. It helps to avoid hardcoding the routes of the app in the code, and it makes it easier to change the routes of the app in the future if needed.
//! ---------------------------------------------------------------------------------------------------------------------------------
//? Benefit of using a route generator class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to handle undefined routes in one place, and it will be reflected in all the places where we use the routes of the app.
//3. It helps to improve the user experience by providing feedback on navigation errors, and it makes it easier to change the way we handle undefined routes in the future if needed.
