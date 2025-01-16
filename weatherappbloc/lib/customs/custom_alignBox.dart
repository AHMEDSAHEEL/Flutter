import 'package:flutter/material.dart';

class CustomAlignBox extends StatelessWidget {
  
  const CustomAlignBox(
      {required this.x,
      required this.y,
      required this.height,
      required this.width,
      required this.color,
      super.key});

  final double x, y, height, width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(x, y),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
