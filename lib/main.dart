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
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Transform.rotate(
                angle: 0.6,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.pink,
                ),
              ),
              Transform.rotate(
                origin: Offset(100.0, 100.0),
                angle: 1.0,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.pink,
                ),
              ),
              Transform.scale(
                scale: 0.5,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.yellow,
                ),
              ),
              Transform.scale(
                scale: 1,
                origin: Offset(50.0, 50.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                ),
              ),
              Transform.translate(
                offset: Offset(100.0, 0.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                ),
              ),
              Transform(
                transform: Matrix4.skewY(0.01)..setRotationY(1.19626),
                origin: Offset(100,0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Text('Hello'),
                ),
              ),
            ],
          ),

        ),),
      ),
    );
  }
}

