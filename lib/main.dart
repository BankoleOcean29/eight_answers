import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  String appBarTitle = 'Ask me anything';

  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text(appBarTitle), backgroundColor: Colors.blueGrey),
      body: AskMe(),
    ),
  ));
}

class AskMe extends StatefulWidget {
  const AskMe({Key? key}) : super(key: key);

  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int imageBall = 1;

  void changeDie(){
    setState(() {
      int max = 5;
      imageBall = Random(). nextInt(max) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(child: Image.asset('images/ball$imageBall.png', width: 250, height: 250)),
          Expanded(
              child: TextField(decoration: InputDecoration(hintText: "Enter anything",
                  filled: true, fillColor: Colors.blueGrey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    changeDie();},
                ),),
          style: TextStyle(color: Colors.amber),)),
        ],
      ),
    );
  }
}


