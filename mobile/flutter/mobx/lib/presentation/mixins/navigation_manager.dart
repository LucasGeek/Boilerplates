import 'package:get/get.dart';

mixin NavigationManager on GetxController {
  final RxString _navigateTo = ''.obs;
  RxString get navigateToRx => _navigateTo;
  set navigateTo(String value) => _navigateTo.subject.add(value);
}