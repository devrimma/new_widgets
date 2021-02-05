import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _width = 150.0;
  var _height = 75.0;
  var _color = Colors.yellow;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 2),
                width: _width,
                height: _height,
                color: _color,
              ),
              FlatButton(
                child: Text('Animated'),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _width = 80.0;
                    _height = 100.0;
                    _color = Colors.purple;

                  });
                },
              ),
            ],
          ),
        ),
        ),
      );
  }
}
