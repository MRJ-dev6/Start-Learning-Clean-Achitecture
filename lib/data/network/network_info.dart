// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  //? The NetworkInfo interface defines a contract for checking the network connectivity status of the device.
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  //? The NetworkInfoImpl class is an implementation of the NetworkInfo interface.
  final InternetConnectionChecker
  _internetConnectionChecker; //? creating a private instance of the InternetConnectionChecker to check the network connectivity status.
  NetworkInfoImpl(this._internetConnectionChecker);
  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection; //? The isConnected getter uses the hasConnection property of the InternetConnectionChecker to check if the device is connected to the internet and returns a Future that resolves to a boolean value indicating the connectivity status.
}
//? The NetworkInfoImpl class is responsible for checking the network connectivity status of the device using the InternetConnectionChecker package. It implements the NetworkInfo interface, which defines a contract for checking the network connectivity status. By using this implementation, we can easily check if the device is connected to the internet before making API calls or performing any network-related operations in the app.