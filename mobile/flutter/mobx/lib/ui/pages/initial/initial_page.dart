import '../../ui.dart';

class InitialPage extends StatefulWidget {
  final InitialPresenter presenter;

  const InitialPage(this.presenter, {Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
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
