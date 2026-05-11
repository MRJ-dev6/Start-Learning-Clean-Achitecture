const String IMAGE_PATH = "assets/images";
class ImagesAssets {
  static const String splashLogo = '$IMAGE_PATH/splash_logo.png';
}
//! this class is used to manage the assets of the app and to avoid hardcoding the assets in the code and to make it easier to change the assets in the future if needed.
//? Benefit of using an assets manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the assets of the app in one place, and it will be reflected in all the places where we use these assets.
//3. It helps to avoid hardcoding assets in the code, and it makes it easier to change the assets of the app in the future if needed.