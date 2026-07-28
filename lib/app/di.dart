import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut_app/app/app_prefs.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  //? this is the app module where we will register all the dependencies

  //* shared preferences instance
  final sharedPrefs = await SharedPreferences.getInstance();
  //? register shared preferences instance
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  //* App preferences instance
  instance.registerLazySingleton<AppPreferences>(() => instance());
  //? why we are dont make instance of AppPreferences here? because we have already registered shared preferences instance above and we can use it in AppPreferences constructor.
  //? so we can use instance() to get the instance of shared preferences and pass it to AppPreferences constructor.
  //! but why we created shared preferences instance (final sharedPrefs = await SharedPreferences.getInstance();) above? cuz we need to wait for the shared preferences instance to be created before we can register it in the get_it instance. so we need to use await here.
}

//? what is module? module is a class that contains all the dependencies that we need to register in the app.
//? what is dependency injection? dependency injection is a technique where we inject the dependencies of a class into the class instead of creating the dependencies inside the class.
//? what is get_it? get_it is a service locator that allows us to register and retrieve dependencies from anywhere in the app.
//? what is registerLazySingleton? registerLazySingleton is a method that allows us to register a dependency as a singleton that will be created only when it is needed for the first time.
//? what is registerFactory? registerFactory is a method that allows us to register a dependency as a factory that will be created every time it is needed.
//? what is registerSingleton? registerSingleton is a method that allows us to register a dependency as a singleton that will be created only once and will be reused every time it is needed.
