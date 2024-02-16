import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorial());

class FlutterTutorial extends StatelessWidget {
  const FlutterTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dima"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontFamily: "Luminoso",
            ),
            children: <TextSpan>[
              TextSpan(text: "Hello"),
              TextSpan(text: " ХУЙ"),
              TextSpan(
                text: "!",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("add"),
        ),
      ),
    );
  }
}
