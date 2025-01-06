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
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  // controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  //onChanged: (value) => _filterUsers(value),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    elevBtn("All"),
                    elevBtn("Unread"),
                    elevBtn("Favorites"),
                    elevBtn("Groups"),
                    elevBtn("+"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                //  child: SingleChildScrollView(
                child: Column(
                  children: [
                    whtsappList(
                        'images/AhmedPicture.jpg',
                        'Ahmed Saheel',
                        'hi Ahmed..how are you and what are you doing',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "20"),
                    whtsappList('images/profileMen.jpg', 'Lakshmanan',
                        'hi laks', Icons.done_all, Colors.green, "2"),
                    whtsappList(
                        'images/profileWomen.png',
                        'Anu',
                        'hi Anu',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "12"),
                    whtsappList('images/AhmedPicture.jpg', 'Ahmed Saheel',
                        'hi Ahmed..', Icons.done_all, Colors.green, "1"),
                    whtsappList(
                        'images/AhmedPicture.jpg',
                        'Ahmed Saheel',
                        'hi Ahmed..',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "22"),
                    whtsappList('images/profileWomen.png', 'Anu', 'hi Anu..',
                        Icons.done, const Color.fromARGB(255, 59, 59, 59), "4"),
                    whtsappList('images/AhmedPicture.jpg', 'Ahmed Saheel',
                        'hi Ahmed..', Icons.done_all, Colors.green, "30"),
                    whtsappList('images/profileMen.jpg', 'Lakshmanan',
                        'hi laks..', Icons.done_all, Colors.green, "21"),
                    whtsappList(
                        'images/profileWomen.png',
                        'Anu',
                        'hi Anu..',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "33"),
                    whtsappList(
                        'images/AhmedPicture.jpg',
                        'Ahmed Saheel',
                        'hi Ahmed..',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "2"),
                    whtsappList(
                        'images/AhmedPicture.jpg',
                        'Ahmed Saheel',
                        'hi Ahmed..',
                        Icons.done,
                        const Color.fromARGB(255, 59, 59, 59),
                        "1"),
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile whtsappList(
      imagePath, text, subtext, IconData icon, Color color, childtext) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 22,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Row(
        children: [
          if (color == Colors.green) Icon(icon, color: color),
          SizedBox(width: 5),
          Flexible(
            child: Text(
              subtext,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          Text("13/02/2024", style: TextStyle(color: Colors.white)),
          SizedBox(
            height: 5,
          ),
          if (icon != Icons.done_all)
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 47, 120, 49),
              radius: 10,
              child: Text(
                childtext,
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
        ],
      ),
    );
  }

  ElevatedButton elevBtn(text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 60, 60, 60),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(text, style: TextStyle(fontSize: 12, color: Colors.grey)),
    );
  }
}
