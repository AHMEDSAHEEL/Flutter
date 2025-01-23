import 'package:flutter/material.dart';

class CustomExpandedDivider extends StatelessWidget {
  const CustomExpandedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 150,
        child: const Divider(
          height: 10,
          thickness: 2.3,
          color: Color.fromARGB(255, 204, 203, 204),
        ),
      ),
    );
  }
}
