import 'package:get/get.dart';

mixin NavigationManager {
  void handleNavigation(Stream<String?> stream, {bool clear = false}) {
    stream.listen((page) {
      if (page != null && page.isNotEmpty == true) {
        if (page == 'back') {
          Get.back();
        } else if (clear == true) {
          Get.offAllNamed(page);
        } else {
          Get.toNamed(page);
        }
      }
    });
  }
}
