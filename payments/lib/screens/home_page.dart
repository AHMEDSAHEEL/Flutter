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
        title: Text(
          'Send Money Abroad',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 225, 225),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, spreadRadius: 5, color: Colors.grey),
                    ],
                  ),
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
                              currency: "USD",
                              icon: Icons.attach_money_outlined),
                          CustomAmountEntr(amount: "2,500.00"),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Min \$25 - Max \$25,000",
                style: TextStyle(
                  color: const Color.fromARGB(255, 52, 4, 133),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, spreadRadius: 5, color: Colors.grey),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount in USD',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Exchange rate USD'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'USD 2,500',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('INR 82.35'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount in Rupees',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Bank Commission \n(Remitter)'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'INR 2,05,875',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('USD 10'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Charge Type \n(Remitter)',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'USD 1',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Expanded(
                        // child: // if not \n use this expanded
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pay transfer \namount',
                            ),
                          ],
                        ),
                        // ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'USD 2,500',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Collect at Source',
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'USD 2,500',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GST',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'INR 254.74',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 175, 174, 177),
                        borderRadius: BorderRadius.circular(8),
                       
                        border: Border.all(
                          color: const Color.fromARGB(255, 52, 4, 133),
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total debit amount",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 52, 4, 133),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "INR 2,06,149.54",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 52, 4, 133),
                              fontWeight: FontWeight.bold),
                            ),
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
