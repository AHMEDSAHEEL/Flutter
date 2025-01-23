import 'package:flutter/material.dart';
import 'package:payments/customs/amount_currency.dart';
import 'package:payments/customs/amount_entry.dart';
import 'package:payments/customs/custom_expanded_divider.dart';
import 'package:payments/customs/custom_warning.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Send Money Abroad'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomWarning(
              warning:
                  "You can transfer max of USD 2,50,000 \nequavalent in a financial year and\nmax of USD 2500 equivalent per day",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 225, 225),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, spreadRadius: 5, color: Colors.grey),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Amount"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomAmountCurrency(
                            currency: "INR", icon: Icons.currency_rupee),
                        CustomAmountEntr(amount: "2,05,875.00"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CustomExpandedDivider(),
                        Icon(
                          Icons.swap_vert_circle,
                          size: 50,
                          color: Color.fromARGB(255, 52, 4, 133),
                        ),
                        CustomExpandedDivider(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomAmountCurrency(
                            currency: "USD", icon: Icons.attach_money_outlined),
                        CustomAmountEntr(amount: "2,500.00"),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
