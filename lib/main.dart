import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      home: TodoApp()
    )
  );
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePage()
    );
  }
}

