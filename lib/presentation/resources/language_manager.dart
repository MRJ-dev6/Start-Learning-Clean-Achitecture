import 'package:tut_app/presentation/resources/constants_manager.dart';

enum LanguageType { english, arabic }

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return AppConstants.english;
      case LanguageType.arabic:
        return AppConstants.arabic;
    }
  }
}
