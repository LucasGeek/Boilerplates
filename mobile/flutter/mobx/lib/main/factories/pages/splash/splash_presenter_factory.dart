import '../../../../presentation/presenters/presenters.dart';
import '../../usecases/usecases.dart';

GetxSplashPresenter makeGetxSplashPresenter() {
  return GetxSplashPresenter(
    loadToken: makeLocalLoadToken(),
  );
}
