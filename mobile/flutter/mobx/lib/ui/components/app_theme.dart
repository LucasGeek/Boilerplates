import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  const primaryColor = Color.fromRGBO(255, 122, 0, 1);
  const primaryColorDark = Color.fromRGBO(190, 69, 0, 1);
  const primaryColorLight = Color.fromRGBO(255, 177, 72, 1);

  const secondaryColor = Color.fromRGBO(56, 56, 56, 1);

  const backgroundColor = Color.fromRGBO(241, 242, 246, 1);

  const dividerColor = Colors.grey;
  final disabledColor = Colors.grey[400];

  final MaterialColor primaryColorMaterial = MaterialColor(
    primaryColor.value,
    {
      50: primaryColor.withOpacity(.5),
      100: primaryColor.withOpacity(.6),
      200: primaryColor.withOpacity(.7),
      300: primaryColor.withOpacity(.8),
      400: primaryColor.withOpacity(.9),
      500: primaryColor.withOpacity(1),
      600: primaryColor.withOpacity(1),
      700: primaryColor.withOpacity(1),
      800: primaryColor.withOpacity(1),
      900: primaryColor.withOpacity(1),
    },
  );

  final inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color(disabledColor!.value)),
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    alignLabelWithHint: true,
  );

  const buttonTheme = ButtonThemeData(
    buttonColor: secondaryColor,
    padding: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 20,
    ),
    textTheme: ButtonTextTheme.primary,
  );

  final elevantedButton = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0.0),
      side: MaterialStateProperty.all(BorderSide.none),
      fixedSize: MaterialStateProperty.all(const Size(200.0, 50.0)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        secondaryColor,
      ),
      foregroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
    ),
  );

  const appBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: true,
    color: backgroundColor,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
    actionsIconTheme: IconThemeData(
      color: primaryColor,
    ),
  );

  const snackBarThemeData = SnackBarThemeData(
    backgroundColor: secondaryColor,
    actionTextColor: primaryColor,
    behavior: SnackBarBehavior.floating,
  );

  return ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: appBarTheme,
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    primarySwatch: primaryColorMaterial,
    disabledColor: disabledColor,
    dividerColor: dividerColor,
    backgroundColor: backgroundColor,
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonTheme,
    elevatedButtonTheme: elevantedButton,
    snackBarTheme: snackBarThemeData,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: primaryColor,
      secondary: secondaryColor,
      onSecondary: secondaryColor,
      error: Colors.redAccent,
      onError: Colors.redAccent,
      background: backgroundColor,
      onBackground: backgroundColor,
      surface: Color(Colors.grey[100]!.value),
      onSurface: Color(Colors.grey[100]!.value),
    ),
  );
}
