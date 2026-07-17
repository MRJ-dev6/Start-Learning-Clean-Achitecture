import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_data_classes.freezed.dart';

@freezed
abstract class LoginObject with _$LoginObject {
  //* This class is used to hold the login data, it is immutable and can be copied with new values using the copyWith method.
  factory LoginObject(String userName, String password) = _LoginObject;
}
