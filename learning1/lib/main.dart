import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitchOn = true;
  bool isChecked = true;
  double sliderValue = 50;
  int radioValue = 1;
  String dateValue = '';
  String dropdownValue = 'Flutter';
  int bottomNaviIndex = 0;
  final TextEditingController textController = TextEditingController();

  final List<String> items = ['Flutter', 'Java', 'Python', 'React'];

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNaviIndex,
        selectedItemColor: Colors.red,
        onTap: (int index) {
          setState(() {
            bottomNaviIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Text Widget
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        buildCard(
                          title: 'Text Widget',
                          child: const Text(
                            'Flutter Coding!',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        buildCard(
                          title: 'Elevated Button',
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Button Pressed')),
                              );
                            },
                            child: const Text('Press Me'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  /// Image Widget
                  Expanded(
                    child: buildCard(
                      title: 'Image Widget',
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                        height: 80,
                      ),
                    ),
                  ),
                ]),

            /// Checkbox
            buildCard(
              title: 'Checkbox',
              child: CheckboxListTile(
                title: const Text('Remember Me'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),

            /// Radio Buttons
            buildCard(
              title: 'Radio Buttons',
              child: Column(
                children: [
                  RadioListTile<int>(
                    title: const Text('Option 1'),
                    value: 1,
                    groupValue: radioValue,
                    onChanged: (value) {
                      setState(() {
                        radioValue = value!;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Option 2'),
                    value: 2,
                    groupValue: radioValue,
                    onChanged: (value) {
                      setState(() {
                        radioValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),

            /// Slider
            buildCard(
              title: 'Slider (Value: ${sliderValue.toInt()})',
              child: Slider(
                min: 0,
                max: 100,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),

            /// TextField
            buildCard(
              title: 'Text Field',
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            /// Dropdown
            buildCard(
              title: 'Dropdown',
              child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                items: items
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),

            /// Date Picker
            buildCard(
              title: 'Date Picker $dateValue ',
              child: ElevatedButton(
                onPressed: () async {
                  DateTime? date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    initialDate: DateTime.now(),
                  );

                  if (date != null) {
                    setState(() {
                      dateValue = '${date.day}/${date.month}/${date.year}';
                    });

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Selected: ${date.toLocal()}'),
                        ),
                      );
                    }
                  }
                },
                child: const Text('Pick Date'),
              ),
            ),

            /// Progress Indicator
            buildCard(
              title: 'Progress Indicator',
              child: const CircularProgressIndicator(),
            ),

            /// Card Example
            buildCard(
              title: 'Card Widget',
              child: const ListTile(
                leading: Icon(Icons.info),
                title: Text('This is a Card'),
                subtitle: Text('A simple card widget example'),
                trailing: Icon(Icons.access_time),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required String title, required Widget child}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
