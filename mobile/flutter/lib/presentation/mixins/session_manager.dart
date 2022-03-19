import 'package:get/get.dart';

mixin SessionManager on GetxController {
  final _isSessionExpired = false.obs;
  RxBool get isSessionExpiredRx => _isSessionExpired;
  set isSessionExpired(bool value) => _isSessionExpired.value = value;
}