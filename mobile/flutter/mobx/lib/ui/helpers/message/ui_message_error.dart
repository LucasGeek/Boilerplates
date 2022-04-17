import 'package:get/get.dart';

enum UIMessageError {
  requiredField,
  invalidField,
  invalidFieldPassword,
  unexpected,
  invalidCredentials,
  emailInUse,
  errorRequest,
}

extension UIMessageErrorExtension on UIMessageError {
  String get description {
    switch (this) {
      case UIMessageError.invalidFieldPassword:
        return 'error_invalidFieldPassword'.tr;
      case UIMessageError.errorRequest:
        return 'error_invalidCredentials'.tr;
      case UIMessageError.invalidCredentials:
        return 'error_invalidCredentials'.tr;
      case UIMessageError.requiredField:
        return 'error_requiredField'.tr;
      case UIMessageError.invalidField:
        return 'error_invalidField'.tr;
      case UIMessageError.emailInUse:
        return 'error_emailInUse'.tr;
      case UIMessageError.unexpected:
      default:
        return 'error_unexpected'.tr;
    }
  }
}
