import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../domain/domain.dart';
import '../../presentation/mixins/mixins.dart';
import '../../ui/pages/splash/splash.dart';

class GetxSplashPresenter extends GetxController
    with NavigationManager, UIMessageErrorManager
    implements SplashPresenter {
  final LoadToken loadToken;

  GetxSplashPresenter({
    required this.loadToken,
  }) {
    checkAccount();
  }

  @override
  Future<void> checkAccount({int durationInSeconds = 1}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));

    try {
      final token = await loadToken.load();
      //navigateTo = token.token.isEmpty ? "/initial" : "/home";
      navigateTo = "/initial";
    } catch (error) {
      navigateTo = '/initial';
    }
  }
}
