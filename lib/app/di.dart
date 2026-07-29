import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut_app/app/app_prefs.dart';
import 'package:tut_app/data/data_source/remote_data_source.dart';
import 'package:tut_app/data/network/app_api.dart';
import 'package:tut_app/data/network/dio_factory.dart';
import 'package:tut_app/data/network/network_info.dart';
import 'package:tut_app/data/repository/repository_impl.dart';
import 'package:tut_app/domain/repository/repository.dart';
import 'package:tut_app/domain/usecase/login_usecase.dart';
import 'package:tut_app/presentation/login/viewModel/login_viewmodel.dart';

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

  //* network info instance
  instance.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(InternetConnectionChecker.createInstance()),
  );
  //? why we are using InternetConnectionChecker.createInstance() here? because we want to create a new instance of InternetConnectionChecker every time we need it. so we are using createInstance() method to create a new instance of InternetConnectionChecker.
  //! but why we are not using InternetConnectionChecker() constructor here? because InternetConnectionChecker() constructor is private and we cannot use it outside the package. so we are using createInstance() method to create a new instance of InternetConnectionChecker.
  //? but why we are not using NetworkInfo constructor here? because NetworkInfo is an abstract class and we cannot create an instance of an abstract class. so we are using NetworkInfoImpl class which implements NetworkInfo interface and we can create an instance of it and its one of the solid principles (dependency inversion principle) that we should depend on abstractions not on concretions. so we are depending on NetworkInfo interface and we are using NetworkInfoImpl class to implement it.

  //* dio factory instance
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  Dio dio = await instance<DioFactory>().getDio();

  //* AppServiceClient instance
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  //* RemoteDataSource instance
  instance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceoimpl(instance()),
  );

  //* Repository instance
  instance.registerLazySingleton<Repository>(
    () => RepositoryImpl(instance(), instance()),
  );
}

initLoginModule() {
  if (!GetIt.instance.isRegistered<LoginUsecase>()) {
    instance.registerFactory<LoginUsecase>(() => LoginUsecase(instance()));
    instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
  }
}

//? what is module? module is a class that contains all the dependencies that we need to register in the app.
//? what is dependency injection? dependency injection is a technique where we inject the dependencies of a class into the class instead of creating the dependencies inside the class.
//? what is get_it? get_it is a service locator that allows us to register and retrieve dependencies from anywhere in the app.
//? what is registerLazySingleton? registerLazySingleton is a method that allows us to register a dependency as a singleton that will be created only when it is needed for the first time.
//? what is registerFactory? registerFactory is a method that allows us to register a dependency as a factory that will be created every time it is needed.
//? what is registerSingleton? registerSingleton is a method that allows us to register a dependency as a singleton that will be created only once and will be reused every time it is needed.
