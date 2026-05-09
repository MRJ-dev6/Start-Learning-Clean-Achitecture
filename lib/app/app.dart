import 'package:flutter/material.dart';
import 'package:tut_app/presentation/theme_manager.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // const MyApp({super.key}); // ? default constructor

  // ! named constructor
  MyApp._internal();
  int counter =
      0; // ? this is a instance variable that will be shared across all instances of MyApp
  // * singleton pattern
  static final MyApp _instance = MyApp._internal();

  // * factory constructor
  factory MyApp() =>
      _instance; // ? this will return the same instance of MyApp every time it's called

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: getApplicationTheme());
  }
}

// * singleton pattern is a design pattern that restricts the instantiation of a class to a single instance and provides a global point of access to that instance.
// ! sinelton explaine : The singleton pattern ensures that a class has only one instance and provides a global point of access to that instance.

// ? how to implement singleton pattern in dart :
// 1. Create a private named constructor. // ! like MyApp._internal() in the above code
// 2. Create a static final instance of the class. // ! like static final MyApp _instance = MyApp._internal(); in the above code
// 3. Create a factory constructor that returns the static instance of the class. // ! like factory MyApp() => _instance; in the above code

// ? why use singleton pattern :
// 1. To ensure that a class has only one instance and provide a global point of access to that instance.
// 2. To control the access to the instance and prevent multiple instances from being created.
// 3. To save memory and resources by reusing the same instance instead of creating multiple instances of the class.

// ? lets see an example of singleton pattern :
//** class Test extends StatelessWidget {
//!   const Test({super.key});

//!   void UpdateAppState(){
//!     MyApp().counter = 11; // ? this will update the counter variable in the MyApp class, but since MyApp is a singleton, it will update the same instance of MyApp and the counter variable will be updated for all instances of MyApp
//!   }

//!   void getCounterValue(){
//!     print(MyApp().counter); //? 11
    
//?     // ? this will print the counter variable in the MyApp class, but since MyApp is a singleton, it will print the same value for all instances of MyApp
//!   }
//!   @override
//!   Widget build(BuildContext context) {
//!     return const Placeholder();
//!   }
//! }

//! class Test2 extends StatelessWidget {
//!   const Test2({super.key});

//!   void getCounterValue(){
//!     print(MyApp().counter); //? 11
    
//?     // ? this will print the counter variable in the MyApp class, but since MyApp is a singleton, it will print the same value for all instances of MyApp
//!   }
//!   @override
//!   Widget build(BuildContext context) {
//!     return const Placeholder();
//!   }
//! }
//?  in the above example, we have two classes Test and Test2 that are stateless widgets. Both classes have a method getCounterValue() that prints the value of the counter variable in the MyApp class. Since MyApp is a singleton, both classes will print the same value of the counter variable, which is 11 in this case. This demonstrates how the singleton pattern allows us to have a single instance of a class that can be accessed globally and shared across different parts of the application.
//* use better commands extension to understand the code