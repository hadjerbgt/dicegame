import 'package:flutter/material.dart';
import 'package:untitled8/idk.dart';
import 'dart:math';

void main() => runApp(test());

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("DICE GAME"),
          backgroundColor: Colors.purple[300],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 70)),
            Center(child: Image.asset('assets/$val.png')),
            Expanded(
                child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  val = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll'),
              backgroundColor: Colors.purple[300],
            ))
          ],
        ),
      ),
    );
  }
}
