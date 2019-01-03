import 'package:flutter/material.dart';

void main() {
  runApp(
    MyStatelessWidget()
  );
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text("Hello from Flutter", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 32.0, color: Colors.white))
      )
    );
  }
}