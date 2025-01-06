import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Overflow with More Option")),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: whtsappList(
          
            'This is a very long text that should be truncated if it exceeds the limit. '
            'This is a sample text that will show the functionality of truncation.',
            'This is a sample subtitle text.'
        
          ),
        ),
      ),
    );
  }
}

class whtsappList extends StatefulWidget {

  final String text;
  final String subtext;


  whtsappList( this.text, this.subtext);

  @override
  _whtsappListState createState() => _whtsappListState();
}

class _whtsappListState extends State<whtsappList> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
      ),
      title: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 16, 16, 16)),
            maxLines: _isExpanded ? null : 3,  // Show full text if expanded, else limit to 3 lines
            overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,  // Show ellipsis if not expanded
          ),
          if (widget.text.length > 50)  // Show 'More' button if text is long
             TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;  // Toggle between expanded and collapsed
                });
              },
              child: Text(_isExpanded ? 'Show less' : 'Show more', style: TextStyle(color: Colors.blue)),
            ),
        ],
      ),
      subtitle: Row(
        children: [
        
          SizedBox(width: 5),
          Text("hii"),
        ],
      ),
      trailing: Column(
        children: [
          Text("13/02/2024", style: TextStyle(color: const Color.fromARGB(255, 31, 31, 31))),
          SizedBox(height: 5),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 47, 120, 49),
            radius: 10,
            child: Text("1", style: TextStyle(color: Colors.black, fontSize: 10)),
          ),
        ],
      ),
    );
  }
}
