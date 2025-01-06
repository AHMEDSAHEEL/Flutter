import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
 home: Scaffold(
  backgroundColor: Colors.black,
  drawer: Drawer(
    child: Center(
      child: Text(
        "onProgress",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    ),
  ),
  appBar: AppBar(
    backgroundColor: Colors.black,
    
    // leading: Padding(
      
    //   padding: const EdgeInsets.all(8.0),
    //   child:
    // ),
    title: Padding(padding: EdgeInsets.all(8),
    
  child: Image.network(
  'https://t3.ftcdn.net/jpg/05/07/46/84/360_F_507468479_HfrpT7CIoYTBZSGRQi7RcWgo98wo3vb7.jpg',
  fit: BoxFit.fill,
),

    
      
    ),
    
    actions: [
      IconButton(
        icon: Icon(Icons.cast, color: Colors.white),
        onPressed: () {
          // Add functionality here if needed
        },
      ),
      IconButton(
        icon: Icon(Icons.notifications, color: Colors.white),
        onPressed: () {
          // Add functionality here if needed
        },
      ),
      IconButton(
        icon: Icon(Icons.search, color: Colors.white),
        onPressed: () {
          // Add functionality here if needed
        },
      ),
    ],
  ),


        body: Column(
          children: [
            SingleChildScrollView(
              child:Padding(padding: 
                EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                       Icon(Icons.cabin,color: Colors.white,),
                       SizedBox(width: 15,),
                       eveBtn("All"),
                       SizedBox(width: 15,),
                       eveBtn("Cricket"),
                       SizedBox(width: 15,),
                       eveBtn("Football"),
                       SizedBox(width: 15,),
                       eveBtn("News"),
                       SizedBox(width: 15,),
                       eveBtn("Cinema"),
                       SizedBox(width: 15,),
                       eveBtn("Tamil Movie"),
                       SizedBox(width: 15,),
                       eveBtn("Gold"),
                       SizedBox(width: 15,),
                       eveBtn("Laptop"),
                       SizedBox(width: 15,),
                       eveBtn("Mobile"),
                       SizedBox(width: 15,),
                       eveBtn("Car"),
                       SizedBox(width: 15,),
                       eveBtn("Bike"),
                       SizedBox(width: 15,),
                       eveBtn("Village"),
                       SizedBox(width: 15,),
                       eveBtn("Vlog"),
                       SizedBox(width: 15,),
                       eveBtn("Keyboard"),
                       SizedBox(width: 15,),
                       eveBtn("TCS"),
                       SizedBox(width: 15,),
                       eveBtn("CTS"),
                       SizedBox(width: 15,),
                       eveBtn("Zoho"),
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

  ElevatedButton eveBtn(text) {
    return ElevatedButton(onPressed: (){},
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(4),
                        
                       ), child: 
                       Text(text,style: TextStyle(color: Colors.black),),
                     );
  }
}
