import 'package:get/get.dart';

mixin FormManager on GetxController {
  final _isFormValid = false.obs;
  RxBool get isFormValidRx => _isFormValid;
  set isFormValid(bool value) => _isFormValid.value = value;
}