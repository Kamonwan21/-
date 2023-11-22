import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  TextEditingController textController = TextEditingController();
  String _input = "...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.go,
              controller: textController,
            ),
            ElevatedButton(
              child: Text('บันทึก'),
              onPressed: () {
                setState(() {
                  _input = textController.text;
                });
              },
            ),
            Text('$_input')
          ],
        ),
      ),
    );
  }
}
