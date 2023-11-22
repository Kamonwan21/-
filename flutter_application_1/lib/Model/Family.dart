import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Photo.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บุคคล'),
        backgroundColor: Colors.green,
      ),
      body: Container(padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(),
        ],
      ),
      ),
    floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to the Photo page.
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Photo()),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      );
  }
}