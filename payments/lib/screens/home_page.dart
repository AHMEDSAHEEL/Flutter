import 'package:flutter/material.dart';

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
            Container(
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
                    "You can transfer max of USD 2,50,000 \nequavalent in a financial year and\nmax of USD 2500 equivalent per day",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 52, 4, 133),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 5,
                    color: Colors.grey
                  ),]
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
                        Row(
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
                                Icons.currency_rupee,
                                color: const Color.fromARGB(255, 52, 4, 133),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "INR",
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
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "2,05,875.00",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 52, 4, 133),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                               
                             Container(
                                  width: 150,
                                  child: const Divider(
                                   
                                    thickness: 2.3,
                                    
                                    color: Color.fromARGB(255, 52, 4, 133),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                    children: [
                      Expanded(child: 
                      Container(
                                  width: 150,
                                  child: const Divider(
                                    height: 10,
                                    thickness: 2.3,
                                    
                                    color: Color.fromARGB(255, 154, 152, 154),
                                  ),
                                ),
                      ),
                      Icon(Icons.swap_vert_circle,size: 50, color: Color.fromARGB(255, 52, 4, 133),),
                      Expanded(child: 
                      Container(
                                  width: 150,
                                  child: const Divider(
                                    height: 10,
                                    thickness: 2.3,
                                    
                                    color: Color.fromARGB(255, 154, 152, 154),
                                  ),
                                ),
                      ),
                    ],
                    ),
                     SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                                Icons.currency_rupee,
                                color: const Color.fromARGB(255, 52, 4, 133),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "INR",
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
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "2,05,875.00",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 52, 4, 133),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                               
                                Container(
                                  width: 150,
                                  child: const Divider(
                                 
                                    thickness: 2.3,
                                    
                                    color: Color.fromARGB(255, 52, 4, 133),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
