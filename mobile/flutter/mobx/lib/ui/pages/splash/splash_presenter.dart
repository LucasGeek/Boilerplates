import 'package:get/get.dart';
import '../../../ui/helpers/helpers.dart';

abstract class SplashPresenter {
  RxString get navigateToRx;
  Rx<UIMessageError?> get mainMessageErrorRx;

  Future<void> checkAccount({int durationInSeconds});
}
