import '../../ui.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage(this.presenter, {Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with NavigationManager, UIMessageErrorManager {
  @override
  void initState() {
    super.initState();

    handleNavigation(widget.presenter.navigateToRx.stream, clear: true);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      style: SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.grey[200],
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
