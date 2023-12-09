import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen()
    );
  }
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multi Page App"),),
      body: Builder(
        builder: (BuildContext context) {
          return Checkbox(
            value: false,
            onChanged: (bool? newValue) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
          );
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2"),),
      body: Builder(
        builder: (BuildContext context) {
          return Checkbox(
            value: false,
            onChanged: (bool? newValue) {
              Navigator.pop(context);
            },
          );
        },
      ), 
    );
  }
}