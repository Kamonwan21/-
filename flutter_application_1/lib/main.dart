import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Family.dart';



void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "APHASIA HELP CARE",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: TextToSpeech(),
      ),
    );
  }
}

class TextToSpeech extends StatefulWidget {
  const TextToSpeech({Key? key}) : super(key: key);

  @override
  _TextToSpeechState createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        shrinkWrap: true,
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Person()),
              );
            },
            child: Column(
              children: [
                Image.asset("images/06.png", width: 200, height: 150),
                Text(
                  "บุคคล",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
