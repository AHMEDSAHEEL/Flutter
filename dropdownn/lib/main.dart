import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Drop(),
    );
  }
}

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  List<String> list = [
    'ind',
    'aus',
    'pak',
    'ban',
    'nz',
    'eng',
    'sl',
    'zim',
    'sa',
    'wi'
  ];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Drop-Down and Dialog box"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog.fullscreen(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Bye'),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("close")),
                        ],
                      ),
                    )),
            child: Text("Click for Full Screen Dialog"),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Bye'),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("close")),
                          ],
                        ),
                      ),
                    )),
            child: Text("Click for dialog"),
          ),
          DropdownButton<String>(
            value: dropdownValue,
            underline: Container(),
            hint: Text("Select"), // Default to first item
            items: list.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
