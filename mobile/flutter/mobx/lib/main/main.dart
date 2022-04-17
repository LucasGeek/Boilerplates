import 'package:asuka/asuka.dart' as asuka;
import 'package:get/get.dart';

import '../ui/ui.dart';
import 'factories/factories.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      title: 'Gift',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      builder: asuka.builder,
      navigatorObservers: [
        asuka.asukaHeroController,
        routeObserver,
      ],
      initialRoute: '/',
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('pt', 'BR'),
      getPages: [
        GetPage(
          name: '/',
          page: makeSplashPage,
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/initial',
          page: makeInitialPage,
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
