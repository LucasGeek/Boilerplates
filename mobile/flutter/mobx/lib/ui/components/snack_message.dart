import 'package:asuka/asuka.dart';

void showMessage(
  String message, {
  int milliseconds = 1000,
}) =>
    AsukaSnackbar.message(message).show();
