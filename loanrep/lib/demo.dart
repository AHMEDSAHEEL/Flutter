import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const LoanPage(
      title: "Gold Loan Details",
      text: "Total Net Gold Wt in Gms",
      value: "96 Gms",
      amount: "₹ 35,00,000",
    ),
    const SimplePage(
      title: "Silver Loan",
      subtext: "More details about silver loan will update soon",
    ),
    const SimplePage(
      title: "Platinum Loan",
      subtext: "Details about platinum loan will update soon",
    ),
    const SimplePage(
      title: "Diamond Loan",
      subtext: "Details about diamond loan will update soon",
    ),
  ];

  void _previousPage() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _nextPage() {
    if (_currentIndex < _pages.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double progressValue = (_currentIndex + 1) / _pages.length;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Loan Eligibility Calculator",
            style: TextStyle(
              color: Color.fromARGB(255, 89, 72, 128),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => print("clicked"),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 89, 72, 128),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 89, 72, 128),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: progressValue,
                backgroundColor: Colors.grey.shade300,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: _pages[_currentIndex],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _currentIndex > 0 ? _previousPage : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentIndex > 0
                          ? const Color.fromARGB(255, 89, 72, 128)
                          : Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _currentIndex < _pages.length - 1 ? _nextPage : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentIndex < _pages.length - 1
                          ? const Color.fromARGB(255, 89, 72, 128)
                          : Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoanPage extends StatelessWidget {
  final String title;
  final String text;
  final String value;
  final String amount;

  const LoanPage({
    super.key,
    required this.title,
    required this.text,
    required this.value,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 89, 72, 128),
                ),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 134, 132, 132),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 89, 72, 128),
                      ),
                    ),
                    Text(
                      value,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 89, 72, 128),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 800,
              height: 100,
              child: Card(
                color: const Color.fromARGB(255, 89, 72, 128),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text(
                        "Max Eligible Loan Amount",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        amount,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SimplePage extends StatelessWidget {
  final String title;
  final String subtext;

  const SimplePage({
    super.key,
    required this.title,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subtext,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
