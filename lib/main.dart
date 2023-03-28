import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'My First Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter Project'),
        ),
        body: const Center(
          child: Text('Hello from Maine!'),
        ),
      ),
    );
  }
}
