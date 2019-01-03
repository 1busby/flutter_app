import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyStatefulWidget()
    )
  );
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  String task = "";
  List todoItems = List();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do List", textDirection: TextDirection.ltr)
      ),
      body: Column(
        children: <Widget> [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.note)
            ),
            onChanged: (input) {
              print("input");
              task = input;
            }
          ),
          RaisedButton(
            child: Text("Add Task"),
            onPressed: () {
              setState(() {
                todoItems.add(task);
                task = "";                
              });
            },
          ),
          Flexible(
            child: ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(index.toString()),
                  child: ListTile(
                    title: Text(todoItems[index])
                  )
                );
              }
            )
          )
        ]
      ),
    );
  }
}