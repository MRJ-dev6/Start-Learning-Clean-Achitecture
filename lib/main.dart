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
//23. Generate the code for the response classes using the json_serializable package and create fromJson and toJson functions for each class to handle the conversion between JSON data and Dart objects.
//24. Add the API client class using the retrofit package to define the API endpoints and to handle the API calls in a more structured way and to reduce boilerplate code when making API calls.
//25. Create login models to represent the data structure of the response from the login API and to make it easier to convert the JSON data to Dart objects and to handle the data in a more structured way in the app.
//26. Create extensions functions to handle the null String and int values and to provide default values for them to avoid null exceptions in the app.
//27. Create mapper extensions to convert the response objects from the data layer into domain models that can be used in the presentation layer and to handle the conversion logic in a more structured way and to reduce boilerplate code when converting between different data structures.
//28. Add dartz Dependency to the pubspec.yaml file to handle functional programming concepts in Dart and to make it easier to handle errors and to work with nullable types in a more structured way.
//29. Refactor the repository interface to use the Either type from the dartz package to handle the success and failure cases of the login operation in a more structured way and to improve error handling in the app.
//30. Start implementing the login request in the repository implementation class to handle the login operation and to make the API call to the login endpoint and to handle the response and to return either a Failure or an Auth object based on the result of the login operation.
//31. Create the remote data source class and remote data source implementation class to handle the API calls to the login endpoint and to make the actual API call using the API client class and to handle the response and to return the AuthResponse object from the API call.
//32. Add the network info class and network info implementation class to handle the network connectivity status of the device and to check if the device is connected to the internet before making API calls or performing any network-related operations in the app.
//33. Create repository implementation class to handle the data from the remote data source and the local data source and to return the data to the presentation layer and to handle the business logic of the login operation and to check the network connectivity status before making the API call and to handle the response from the API call and to return either a Failure or an Auth object based on the result of the login operation.
//34. Add error handler class to handle the errors in a more structured way and to reduce boilerplate code when handling errors in the app and to define the different types of errors that we can have in our app in a more structured way using the DataSource enum and the ResponseCode and ResponseMessage classes.
//35. continue implementing the error handler class to handle the different types of errors that we can have in our app and to return the appropriate Failure object based on the type of error that we have and to handle the different types of errors that we can have in our app in a more structured way using the DataSource enum and the ResponseCode and ResponseMessage classes.
//36. Enhance error handling by adding a new error type and updating repository implementation for structured error management; improve app robustness and user experience.
//37. Add Dio factory class to create and configure the Dio instance for making API calls and to handle the configuration of the Dio instance in a more structured way and to reduce boilerplate code when creating and configuring the Dio instance for making API calls in the app.
//38. Add pretty dio logger package to log the request and response in a pretty format and to make it easier to debug the API calls and to handle the logging of the API calls in a more structured way and to reduce boilerplate code when logging the API calls in the app.
//39. Start creating language manager class to handle the language of the app and to make it easier to change the language of the app in a more structured way and to reduce boilerplate code when handling the language of the app in the presentation layer.
//40. Create app preferences class to handle the shared preferences of the app and to make it easier to handle the shared preferences in a more structured way and to reduce boilerplate code when handling the shared preferences in the app and to handle the language preference of the app using the shared preferences and to return the default language if there is no language preference set in the shared preferences.
//41. Refactor DioFactory to utilize AppPreferences for dynamic language handling and clean up timeout settings
//42. Add BaseUsecase abstract class for use case implementation
//43. Add LoginUsecase implementation for user authentication
//44. Add LoginViewModel to manage login screen state and interactions
//45. Refactor LoginViewModel to implement input/output interfaces and manage streams for username and password validation
//46. Implement LoginObject data class and update login view model methods