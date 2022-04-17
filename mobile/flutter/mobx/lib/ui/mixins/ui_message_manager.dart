import '../components/components.dart';
import '../helpers/helpers.dart';

mixin UIMessageErrorManager {
  void handleMessageError(
    Stream<UIMessageError?> stream, {
    int milliseconds = 5000,
  }) {
    stream.listen((message) {
      if (message != null) {
        showMessage(message.description, milliseconds: milliseconds);
      }
    });
  }
}

mixin UIMessageSuccessManager {
  void handleMessageSuccess(
    Stream<UIMessageSuccess?> stream, {
    int milliseconds = 5000,
  }) {
    stream.listen((message) {
      if (message != null) {
        showMessage(message.description, milliseconds: milliseconds);
      }
    });
  }
}
