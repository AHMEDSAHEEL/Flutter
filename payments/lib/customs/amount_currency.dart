import 'package:flutter/material.dart';

class CustomAmountCurrency extends StatelessWidget {
  const CustomAmountCurrency({required this.currency,required this.icon, super.key});
  final String currency;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 204, 204, 204),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color.fromARGB(255, 52, 4, 133),
              width: 0.5,
            ),
          ),
          child: Icon(
            icon,
            size: 30,
            color: const Color.fromARGB(255, 52, 4, 133),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          currency,
          style: TextStyle(
              color: const Color.fromARGB(255, 52, 4, 133),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down_outlined),
        ),
      ],
    );
  }
}
