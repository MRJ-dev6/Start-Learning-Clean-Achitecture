class RoutesManager {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}
// ! this class is used to manage the routes of the app and to avoid hardcoding the routes in the code and to make it easier to change the routes in the future if needed.
// ? Benefit of using a route manager class :
// 1. It helps to keep the code organized and maintainable.
// 2. It allows us to change the routes of the app in one place, and it will be reflected in all the places where we use the routes of the app.
// 3. It helps to avoid hardcoding the routes of the app in the code, and it makes it easier to change the routes of the app in the future if needed.