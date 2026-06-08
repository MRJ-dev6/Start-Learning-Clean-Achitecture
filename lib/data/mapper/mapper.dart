import 'package:tut_app/app/extensions.dart';
import 'package:tut_app/data/response/response.dart';
import 'package:tut_app/domain/models.dart';
import 'package:tut_app/presentation/resources/constants_manager.dart';

extension UserResponseMapper on UserResponse? {
  //? This extension method converts a UserResponse object to a User domain model.
  User toDomain() {
    return User(
      id: this?.id.orEmpty() ?? AppConstants.empty,
      name: this?.name.orEmpty() ?? AppConstants.empty,
      numOfNotifications:
          this?.numOfNotifications.orZero() ?? AppConstants.zero,
    );
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  //? This extension method converts a ContactsResponse object to a Contact domain model.
  Contact toDomain() {
    return Contact(
      number: this?.number.orEmpty() ?? AppConstants.empty,
      email: this?.email.orEmpty() ?? AppConstants.empty,
      link: this?.link.orEmpty() ?? AppConstants.empty,
    );
  }
}

extension AuthResponseMapper on AuthResponse? {
  //? This extension method converts an AuthResponse object to an Auth domain model.
  Auth toDomain() {
    return Auth(
      user: this?.user.toDomain(),
      contact: this?.contacts.toDomain(),
    );
  }
}

//? The above code defines three extension methods in Dart: `UserResponseMapper`, `ContactsResponseMapper`, and `AuthResponseMapper`. These extensions provide a convenient way to convert response objects from the data layer (UserResponse, ContactsResponse, AuthResponse) into domain models (User, Contact, Auth). Each extension method checks for nullability and uses the `orEmpty` and `orZero` extension methods to provide default values when necessary. This helps to ensure that the conversion process is robust and can handle cases where certain fields may be missing or null in the response.
//* Benefits of using extension methods for mapping:
//? 1. Separation of Concerns: Extension methods allow you to keep the mapping logic separate from the data models and domain models, making the code cleaner and more maintainable.
//? 2. Reusability: You can reuse the mapping logic across different parts of the application without needing to duplicate code or modify existing classes.
//? 3. Readability: Extension methods can make the code more readable by providing a clear and concise way to convert between different data structures, improving the overall clarity of the codebase.
//* Data Flow in the application:
//? 1. The application makes an API call to fetch data, which returns a response in the form of a UserResponse, ContactsResponse, or AuthResponse object.
//? 2. The extension methods defined in the Mapper class are used to convert these response objects into their corresponding domain models (User, Contact, Auth).
//? 3. The domain models are then used throughout the application, particularly in the presentation layer, to display data to the user or to perform business logic operations. This separation of data structures helps to maintain a clean architecture and allows for easier testing and maintenance of the application.
