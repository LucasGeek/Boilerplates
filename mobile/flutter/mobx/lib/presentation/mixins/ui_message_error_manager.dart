import 'package:get/get.dart';

import '../../ui/helpers/helpers.dart';

mixin UIMessageErrorManager on GetxController {
  final Rx<UIMessageError?> _mainMessageError = Rx<UIMessageError?>(null);
  Rx<UIMessageError?> get mainMessageErrorRx => _mainMessageError;
  set mainMessageError(UIMessageError? value) =>
      _mainMessageError.value = value;
}
