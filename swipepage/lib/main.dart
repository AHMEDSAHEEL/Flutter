import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe Pages Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactSwipeScreen(),
    );
  }
}

class ContactSwipeScreen extends StatefulWidget {
  const ContactSwipeScreen({super.key});

  @override
 State<ContactSwipeScreen> 
  createState() => _ContactSwipeScreenState();
}

class _ContactSwipeScreenState extends State<ContactSwipeScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void _goToPage(int pageIndex) {
    setState(() {
      _currentPageIndex = pageIndex;
    });
    _pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Container(
         //   color: const Color.fromARGB(255, 206, 221, 234),
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.call,
                    color: _currentPageIndex == 0 ? Colors.green : Colors.black,
                    size: 30,
                  ),
                  onPressed: () => _goToPage(0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: _currentPageIndex == 1 ? Colors.green : Colors.black,
                    size: 30,
                  ),
                  onPressed: () => _goToPage(1),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: [
                ContactHistoryPage(),
                ContactDetailsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactHistoryPage extends StatelessWidget {
   const ContactHistoryPage({super.key});


  // String _generateRandomPhoneNumber() {
  //   return List.generate(10, (_) => Random().nextInt(10)).join();
  // }
String _generateRandomPhoneNumber() {
  String phoneNumber = '';
  for (int i = 0; i < 10; i++) {
    phoneNumber += Random().nextInt(10).toString();
  }
  return phoneNumber;
}

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.phone),
          title: Text(_generateRandomPhoneNumber()),
          subtitle: Text('Date & Time: 2025-01-10 10:$index AM'),
        );
      },
    );
  }
}

class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ahmed Saheel S',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: 6382420093',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Text(
              'Email: shaheel123as@gmail.com',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
