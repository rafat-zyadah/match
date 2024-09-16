// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('تطابق صورة'),
          backgroundColor: Colors.indigo[800],
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randInt = Random();
  int leftImageNumber = 1;
  int rightImageNumber = 2;
  void leftRightRandom() {
    setState(() {
      leftImageNumber = randInt.nextInt(9) + 1;
      rightImageNumber = randInt.nextInt(9) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          rightImageNumber == leftImageNumber
              ? 'مبروك لقد ربحت'
              : 'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    leftRightRandom();
                    print('Left Button get pressed');
                  },
                  child: Image.asset('images/image-$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    leftRightRandom();
                    print('Right Button get pressed');
                  },
                  child: Image.asset('images/image-$rightImageNumber.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
