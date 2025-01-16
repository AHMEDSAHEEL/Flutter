import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateText extends StatelessWidget {
  const CustomDateText(
      {required this.text,
      required this .date,
      required this.color,
      required this.font,
      required this.fontSize,
      super.key});
  final DateFormat date;
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
