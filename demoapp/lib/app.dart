import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('WFO Status'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Mon, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
                status("Sun, 01 Dec 2024",
                    "Swipped location:  Siruseri,Chennai", "At Office"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container status(String date, String loc, String status) {
    return Container(
      height: 100, 
      width: 800, 
     
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Center(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.all(6.0), 
            child: ListTile(
              title: Text(
                date,
                style: TextStyle(fontSize: 14), 
              ),
              subtitle: Text(
                loc,
                style: TextStyle(fontSize: 12.5,height: 2), 
              ),
              trailing: Text(
                status,
                style: TextStyle(
                    fontSize: 12,
                    height: 1.5), 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
