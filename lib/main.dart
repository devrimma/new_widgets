import 'package:flutter/material.dart';
import 'package:new_widgets/Cont2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.easeIn,
              width: selected ? 100 : 200,
              height: selected ? 200 : 100,
              color: selected ? Colors.red : Colors.green,
            ),
          ),
        ),
        ),
      );
  }
}
