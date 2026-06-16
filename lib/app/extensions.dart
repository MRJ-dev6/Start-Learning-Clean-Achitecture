import 'package:tut_app/app/constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

//? The above code defines two extension methods in Dart: `NonNullString` and `NonNullInteger`. These extensions provide a convenient way to handle nullable strings and integers by providing default values when the original value is null. The `orEmpty` method returns an empty string if the original string is null, while the `orZero` method returns zero if the original integer is null. This can help prevent null reference errors and simplify code that needs to work with nullable types.
//* how extension methods work in Dart ?
// Extension methods in Dart allow you to add new functionality to existing libraries or classes without modifying their source code. You can define an extension on any type, and it will be available for all instances of that type. This is particularly useful for adding utility methods or for providing a more fluent API when working with existing classes. To use an extension method, you simply call it on an instance of the type that the extension is defined on, and it will execute the code defined in the extension method. This allows for cleaner and more readable code, as you can call methods directly on the objects without needing to check for null values or write additional logic to handle nullable types.
//! lets see an example :
// void test() {
  //? case one
  // String? name;
  // int? count;

  // print(name.orEmpty()); // Output: ""
  // print(count.orZero()); // Output: 0


  //? case two
  // String? name = "John";
  // int? count = 5;

  // print(name.orEmpty()); // Output: "John"
  // print(count.orZero()); // Output: 5
// }
