// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label

import 'dart:io';

import 'package:catex/catex.dart';
import 'package:dartpy/dartpy_annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test21/Q1/Q1_!1.dart';
import 'package:test21/QS/2015/EC/_1_1.dart';
import 'package:test21/beep.dart';
//import 'package:catex/catex.dart';

import 'package:test21/qs_cm.dart';

import 'Q1/Q1_!1.dart';
import 'package:test21/QS/2015/EC/_1_EC.dart';
import 'QS/2015/EC/_1.dart';
import 'qs_cm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colorrr = Colors.blueGrey;
  var _conic = Icons.add;
  int mint = 0;
  int _counter = 0;
  String nns = "";
  var nn = "";
  var values = [r"\ge", r"\le", r">", r"<", "ee, ", "kk"];
  var value = r"\ge";

  void _incrementCounter() {
    print("red necks");

    _counter++;

    // nns = "on us";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child:
                  // Time left
                  Text("5 min left" + nns,
                      style: TextStyle(
                          color: Colors.red[600], fontWeight: FontWeight.bold)),
            ),
            Flexible(
                child: ListView(
              children: [Q1Holder(show: true), CaTeX(value)],
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _colorrr,
        onPressed: () {
          _conic = Icons.subdirectory_arrow_left;
          _incrementCounter();
          //resultss();
          one();

          value = values[mint];
          setState(() {
            print(mint);

            if (mint < 4) {
              if (mint <= 0)
                _colorrr = Colors.blue;
              else if (mint <= 1)
                _colorrr = Colors.orange;
              else if (mint <= 2)
                _colorrr = Colors.yellow;
              else if (mint <= 3) _colorrr = Colors.black;
              mint++;
            } else {
              mint = 0;
              _colorrr = Colors.white;
              _conic = Icons.add_to_home_screen;
            }
          });
        },
        tooltip: "",
        child: Icon(_conic),
      ),
    );
  }
}
