import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.ac_unit_outlined,
              size: 50.0,
              ),
              Opacity(
                opacity: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 60.0,
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.1,
                child: Icon(
                  Icons.share,
                  size: 70.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 30.0,
                  height: 40.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }
}
