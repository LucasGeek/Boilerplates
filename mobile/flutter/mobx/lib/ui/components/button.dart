import 'package:flutter/material.dart';

import './components.dart';

class Button extends StatelessWidget {
  final Key? key;
  final VoidCallback? onPressed;
  final String text;
  final Color? colorBtn;
  final Color? colorTxt;

  Button({
    this.key,
    required this.onPressed,
    required this.text,
    this.colorBtn,
    this.colorTxt,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      key: key,
      onPressed: onPressed,
      elevation: 0.0,
      focusElevation: 0.0,
      highlightElevation: 0.0,
      color: colorBtn,
      child: Text(
        text,
        style: TextStyle(
          color: colorTxt != null ? colorTxt : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
