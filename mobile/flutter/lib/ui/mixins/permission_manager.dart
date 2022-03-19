import 'package:get/get.dart';

mixin PermissionManager {
  void handlePermission(Stream<bool?> stream) {
    stream.listen((isAccept) {
      if (isAccept != true) {
        Get.toNamed('/permission');
      }
    });
  }
}
