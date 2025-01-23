import 'package:flutter/material.dart';

class CustomAmountEntr extends StatelessWidget {
  const CustomAmountEntr({required this.amount, super.key});
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              amount,
              style: TextStyle(
                  color: const Color.fromARGB(255, 52, 4, 133),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Container(
              width: 140,
              child: const Divider(
                thickness: 2.3,
                color: Color.fromARGB(255, 52, 4, 133),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
