// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:tut_app/data/data_source/remote_data_source.dart';
import 'package:tut_app/data/mapper/mapper.dart';
import 'package:tut_app/data/network/error_handler.dart';
import 'package:tut_app/data/network/failure.dart';
import 'package:tut_app/data/network/network_info.dart';
import 'package:tut_app/data/network/requests.dart';
import 'package:tut_app/domain/models/models.dart';
import 'package:tut_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  // * this class will be responsible for handling the data from the remote data source and the local data source and to return the data to the presentation layer
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._remoteDataSource, this._networkInfo);
  @override
  Future<Either<Failure, Auth>> login(LoginRequest loginRequest) async {
    //? before making the API call, we need to check if the device is connected to the internet or not, if the device is not connected to the internet, we will return a failure with a message "no internet connection", if the device is connected to the internet, we will make the API call and return the data to the presentation layer.
    if (await _networkInfo.isConnected) {
      //? connected to internet
      try {
        final response = await _remoteDataSource.login(loginRequest);
        if (response.status == ApiInternelStatus.success) {
          //*success
          return Right(
            response.toDomain(),
          ); //? this will convert the response from the API to the domain model using the toDomain() method in the mapper class and return it to the presentation layer, and since we are using the Either type, we will return the data wrapped in a Right() which indicates that the operation was successful and the data is available.
        } else {
          //! failure
          return Left(
            Failure(
              code: ApiInternelStatus.failure,
              message: response.message ?? ResponseMessage.defualt,
            ), //? this will return a failure with the message from the API response, and since we are using the Either type, we will return the failure wrapped in a Left() which indicates that the operation was failed and the data is not available.
          );
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      //? internet connection error
      return Left(
        DataSource.noInternetConnection.getFailure(),
      ); //? this will return a failure with a message "no internet connection", and since we are using the Either type, we will return the failure wrapped in a Left() which indicates that the operation was failed and the data is not available.
    }
  }
}
