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
// 5. I moved the private variables and functions to the viewmodel class
// 6. I craeted a new function called _postDataToView that will post the data to the view and i called it in the start function to post the data when the viewmodel is initialized
// 7. I implemented the dispose function to close the stream controller when the viewmodel is disposed
// 8. I implemented the inputSliderViewObject and outputSliderViewObject to handle the input and output of the data to the view
// 9. I implemented the goNext, goPrevious, and onPageChanged functions to handle the user interactions with the onBoarding screen and to update the data accordingly
// 10. I created a new widget called _getContentWidget that will build the content of the onBoarding screen based on the data from the viewmodel
// 11. I created a new widget called _getProperCircle that will return the proper circle widget based on the current index of the onBoarding screen
// 12. I refactored the build function to use the _getContentWidget to build the content of the onBoarding screen and to use the _getProperCircle to build the circles at the bottom of the screen
// 13. I removed the business logic from the view and i made the view only responsible for building the UI and handling the user interactions and i made the viewmodel responsible for handling the business logic and updating the data accordingly
// 14. I tested the onBoarding screen to make sure that it is working properly and that the data is being updated correctly and that the UI is being built correctly based on the data from the viewmodel
//? Benefits of using the MVVM architecture in the onBoarding screen :
//1. It helps to separate the presentation layer from the business logic layer
//2. It helps to make the code more maintainable and testable 
//3. It helps to make the code more reusable and it helps to make the code more scalable 
//4. It helps to make the code more flexible and it helps to make the code more modular 
//5. It helps to make the code more organized and it helps to make the code more readable 
//* }
//21. Add some dependencies to the pubspec.yaml file (dio, retrofit, build_runner, retrofit_generator, json_serializable, analyzer){
//? retrofit: is a type conversion dio client generator using source_gen and inspired by Chopper and Retrofit.
//? build_runner: A tool for generating code in Dart, often used with packages like retrofit_generator to automate the creation of API client code.
//? retrofit_generator: A code generator for the retrofit package that generates API client code based on annotations, reducing boilerplate and improving maintainability.
//? json_serializable: A package that generates code for JSON serialization and deserialization, making it easier to convert between Dart objects and JSON data.
//? analyzer: A package that provides static analysis of Dart code, helping to identify potential issues and improve code quality.
//? dio: A simple and powerful HTTP client for Dart, making it easy to make API calls and handle responses.
//}
//22. Add response classes to handle the API responses and to make it easier to convert the JSON data to Dart objects and to handle the data in a more structured way.