// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Todo App",
    debugShowCheckedModeBanner: false,
    home: TODOAPP(),
  ));
}

class TODOAPP extends StatefulWidget {
  const TODOAPP({super.key});

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value = 'null';
  var listTodo = [
    '',
  ];
  addTodo(String item) {
    setState(() {
      listTodo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              addTodo(value);
            },
            child: Icon(Icons.add)),
        appBar: AppBar(
          title: Text("TODO APP"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: listTodo.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        onChanged: (val) {
                          value = val;
                        },
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.accessibility_rounded),
                      title: Text(
                        '${listTodo[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
            }));
  }
}
