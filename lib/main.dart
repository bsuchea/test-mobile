import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'GestureDetector Example',
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('GestureDetector Example'),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () => print('Text tapped'),
                  child: const Text(
                    'Tap me!',
                    style: TextStyle(fontSize: 24.0),
                  )),
              GestureDetector(
                  onDoubleTap: () => print('Double Text tapped'),
                  child: Text("Double Tap me!" , style: TextStyle(fontSize: 24.0)),
              )
            ],
          ),
        ), 
      ),
    );
  }
}
