// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class XElevatedButton extends StatelessWidget {
  XElevatedButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.fontFamily,
    required this.onPressed,
    required this.color,
    required this.borderColor,
    required this.width,
    required this.height,
    required this.radius,
  });
  String text;
  Function() onPressed;
  Color color;
  Color textColor;
  Color borderColor;
  double width;
  double height;
  double radius;
  double textSize;
  String fontFamily;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor),
        backgroundColor: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
