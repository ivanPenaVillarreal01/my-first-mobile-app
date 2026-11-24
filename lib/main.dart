import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message =
      'Welcome to my first mobile app! Please click the button below';

  void changeText() {
    setState(() {
      message = 'You clicked the button!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Mobile App'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeText,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          hoverColor: Colors.orange,
          child: const Icon(Icons.touch_app),
        ),
      ),
    );
  }
}