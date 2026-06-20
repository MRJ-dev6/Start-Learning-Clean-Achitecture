class AppConstants {
  static const int splashDelay =
      3; // ? this is the delay time for the splash screen in seconds
  static const int sliderAnimationDelay =
      500; // ? this is the delay time for the slider animation in milliseconds
  static const String arabic = "ar";
  static const String english = "en";
}
//! this class is used to manage the constants of the app and to avoid hardcoding the constants in the code and to make it easier to change the constants in the future if needed.
//? Benefit of using a constants manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the constants of the app in one place, and it will be reflected in all the places where we use these constants.
//3. It helps to avoid hardcoding constants in the code, and it makes it easier to change the constants of the app in the future if needed.