import 'package:get/get.dart';

enum UIMessageSuccess {
  verifyEmail,
  changed,
}

extension UIMessageSuccessExtension on UIMessageSuccess {
  String get description {
    switch (this) {
      case UIMessageSuccess.verifyEmail:
        return 'success_verifyEmail'.tr;
      case UIMessageSuccess.changed:
        return 'success_changed'.tr;
    }
  }
}
