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