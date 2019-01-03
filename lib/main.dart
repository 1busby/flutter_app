import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text("Hello from Flutter", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 32.0, color: Colors.white))
      )
    )
  );
}