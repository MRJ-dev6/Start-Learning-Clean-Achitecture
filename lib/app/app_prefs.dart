// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut_app/app/constants.dart';
import 'package:tut_app/presentation/resources/language_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  Future<String> getAppLanguge() async {
    String? languge = _sharedPreferences.getString(Constants.prefsKeyLanguage);
    if (languge != null && languge.isNotEmpty) {
      return languge;
    } else {
      //? default languge
      return LanguageType.english.getValue();
    }
  }

  AppPreferences(this._sharedPreferences);
}
