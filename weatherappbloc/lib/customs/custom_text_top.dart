import 'package:flutter/material.dart';

class CustomTextTop extends StatelessWidget {
  const CustomTextTop({required this.text,required this.color,required this.font, super.key});
  final String text;
  final Color color;
  final FontWeight font;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color, // Set the symbol color to white
        fontWeight:font,
      ),
    );
  }
}
