const String IMAGE_PATH = "assets/images";

class ImagesAssets {
  //? splash screen assets
  static const String splashLogo = '$IMAGE_PATH/splash_logo.png';
  //? onBoarding screen assets
  static const String onBoardingLogo1 = '$IMAGE_PATH/onboarding_logo1.svg';
  static const String onBoardingLogo2 = '$IMAGE_PATH/onboarding_logo2.svg';
  static const String onBoardingLogo3 = '$IMAGE_PATH/onboarding_logo3.svg';
  static const String onBoardingLogo4 = '$IMAGE_PATH/onboarding_logo4.svg';
  static const String onBoardingRightArrowIc = '$IMAGE_PATH/right_arrow_ic.svg';
  static const String onBoardingLeftArrowIc = '$IMAGE_PATH/left_arrow_ic.svg';
  static const String onBoardingHollowCircleIc =
      '$IMAGE_PATH/hollow_circle_ic.svg';
  static const String onBoardingSolidCircleIc =
      '$IMAGE_PATH/solid_circle_ic.svg';
}
//! this class is used to manage the assets of the app and to avoid hardcoding the assets in the code and to make it easier to change the assets in the future if needed.
//? Benefit of using an assets manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the assets of the app in one place, and it will be reflected in all the places where we use these assets.
//3. It helps to avoid hardcoding assets in the code, and it makes it easier to change the assets of the app in the future if needed.