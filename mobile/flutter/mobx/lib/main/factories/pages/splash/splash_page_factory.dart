import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../ui/pages/splash/splash.dart';
import 'splash_presenter_factory.dart';

Widget makeSplashPage() {
  final presenter = Get.put<SplashPresenter>(makeGetxSplashPresenter());
  return SplashPage(presenter);
}
