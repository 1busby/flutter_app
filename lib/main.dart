import 'package:flutter/material.dart';

void main() {
  runApp(
    MyStatefulWidget()
  );
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  var myColor = Colors.green;

  changeColor() {
    setState(() {
      myColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
        child:Container(
        color: myColor,
        child: Center(
          child: RaisedButton(
            child: Text("Click"),
            onPressed: () {
              print("clicked");
              changeColor();
            },
          )
        )
      )
    );
  }
}