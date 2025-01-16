import 'package:flutter/material.dart';

class CustomTextCenter extends StatelessWidget {
  const CustomTextCenter(
      {required this.text, required this.color, required this.font,required this.fontSize, super.key});
  final String text;
  final Color color;
  final FontWeight font;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, // Set the symbol color to white
          fontWeight: font,
          fontSize: fontSize),
    );
  }
}
