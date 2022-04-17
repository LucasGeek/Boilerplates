import 'package:get/get.dart';

import '../../factories.dart';
import '../../../../ui/ui.dart';
import './initial_presenter_factory.dart';

Widget makeInitialPage() {
  final presenter = Get.put<InitialPresenter>(makeGetxInitialPresenter());
  return InitialPage(presenter);
}
