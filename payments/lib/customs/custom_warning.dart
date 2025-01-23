import 'package:flutter/material.dart';

class CustomWarning extends StatelessWidget {
  const CustomWarning({required this.warning, super.key});
  final String warning;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 197, 196, 196),
          border: Border.all(
            color: const Color.fromARGB(255, 52, 4, 133),
            width: 0.5,
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: const Color.fromARGB(255, 52, 4, 133),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
           warning,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: const Color.fromARGB(255, 52, 4, 133),
            ),
          ),
        ],
      ),
    );
  }
}
