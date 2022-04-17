import 'package:get/get.dart';

import '../../ui/helpers/helpers.dart';

mixin UIMessageSuccessManager on GetxController {
  final Rx<UIMessageSuccess?> _mainMessageSuccess = Rx<UIMessageSuccess?>(null);
  Rx<UIMessageSuccess?> get mainMessageSuccessRx => _mainMessageSuccess;
  set mainMessageSuccess(UIMessageSuccess? value) =>
      _mainMessageSuccess.value = value;
}
