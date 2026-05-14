import 'package:tut_app/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//! Arrangment of the commits:
// 1.first commit: create a new flutter project and delete the default code in the main.dart file.
// 2.creating layers folders : presentation, domain, data,and app.
// 3.creating application class in the app layer and implementing the singleton pattern in it.
// 4.creating color manager class in the presentation layer to manage the colors of the app
// 5.creating font manager class in the presentation layer to manage the fonts of the app
// 6.Refactor color and font management classes; add values manager for consistent layout spacing.
// 7.Add style manager for centralized text styling; enhance maintainability and consistency across the app.
// 8.Add theme manager to centralize app theming; improve maintainability and consistency across the app.
// 9.Add Route manager to centralize navigation logic; enhance maintainability and scalability of the app's routing system.
// 10.Add Route generator to handle undefined routes; improve user experience by providing feedback on navigation errors.
// 11.Add String manager to centralize app strings; enhance maintainability and ease of localization in the future.
// 12.Add assets to the pubspec.yaml file to manage images and other assets in the app.
// 13.Add Assets manager to centralize asset paths; improve maintainability and ease of asset management in the app.
// 14.Add Splash screen delay constant to the constants manager class; enhance maintainability and ease of configuration for the splash screen delay time.
// 15.Add Splash screen implementation with timer; improve user experience by providing a branded entry point to the app.
// 16.Add OnBoarding screen assets and strings; enhance user onboarding experience with informative visuals and text.
// 17.Add OnBoarding screen implementation by the wrong way by putting the business logic in the view; will refactor later to move business logic to the view model for better maintainability and testability.
// 18.Add Base viewmodel to define the base structure for all viewmodels in the app
// 19.Add OnBoarding viewmodel to handle the business logic of the onBoarding screen
//* 20.Refactoring on_boarding_view.dart to move business logic to the viewmodel {
//? what i done in the refactoring :
// 1. I created a new file called onboarding_viewmodel.dart in the presentation layer
// 2. I moved SliderObject to the models file in the domain layer
// 3. I created a new class called SliderViewObject in models file to hold the data for the view
// 4. I created a new class called OnboardingViewmodel that extends the BaseViewmodel class and implements the OnboardingViewmodelInputs and OnboardingViewmodelOutputs interfaces
//* }