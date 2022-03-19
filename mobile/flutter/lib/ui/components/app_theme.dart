import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Color.fromRGBO(7, 131, 243, 1);
  final primaryColorDark = Color.fromRGBO(0, 83, 186, 1);
  final primaryColorLight = Color.fromRGBO(107, 198, 255, 1);

  final disabledColor = Colors.grey[400];
  final dividerColor = Colors.grey;

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
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    alignLabelWithHint: true,
  );

  final buttonTheme = ButtonThemeData(
    buttonColor: primaryColor,
    padding: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 20,
    ),
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final appBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: true,
    color: Colors.white,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
    actionsIconTheme: IconThemeData(
      color: primaryColor,
    ),
  );

  return ThemeData(
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: appBarTheme,
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    primarySwatch: primaryColorMaterial,
    disabledColor: disabledColor,
    dividerColor: dividerColor,
    //accentColor: primaryColor,
    backgroundColor: Colors.grey[200],
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonTheme,
  );
}
