import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text("កម្មវិធីខ្ញុំ"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.green,
                size: 35,
              ),
            ),
            Text(".......")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // child: Icon(Icons.menu),
          child: Text(
            "+ add",
            style: TextStyle(fontSize: 20),
          ),
        ),
        // body: Center(
        //     child: Container(
        //     width: 350,
        //     height: 100,
        //     decoration: BoxDecoration(
        //       color: Colors.amber,
        //       borderRadius: BorderRadius.all(
        //         Radius.circular(8)
        //       )
        //     ),
        //     child: Text("សូមស្វាគមន៍!",
        //         style: TextStyle(
        //           color: Colors.red,
        //           fontFamily: "Khmer OS",
        //           fontSize: 50,
        //         )
        //       ),
        //     )
        // ),
        body: TextButton(
          onPressed: () {
            if (kDebugMode) {
              print("pressed");
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                color: Colors.redAccent,
                width: 5
              )
            )
            ),
          child: Text(
            "Click You",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
