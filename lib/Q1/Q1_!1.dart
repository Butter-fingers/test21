// ignore_for_file: file_names, unused_local_variable, prefer_const_constructors

import 'dart:math';

import 'package:catex/catex.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:test21/QS/2015/EC/_1.dart';

class Q1Holder extends StatefulWidget {
  final bool show;
  const Q1Holder({Key? key, required this.show}) : super(key: key);

  @override
  _Q1HolderState createState() => _Q1HolderState();
}

class _Q1HolderState extends State<Q1Holder> {
  //1.1.1 question and answer
  //var q_1_1 = qn();
  //values0
  var count = [0, 0];
  var xs = [
    ["", ""],
    ["", ""],
    ["", ""],
    ["", ""]
  ];
  var _q_1 = one()[1][0];
  final num = ["1.1.1", "1.1.2", "1.1.3", "1.1.4"];
  final num2 = ["1.2", "1.3"];
  final _num2 = [
    "Calculate, without using a Calculator: ",
    "Solve for x and y simultaneously"
  ];
  var mark = [0, 3, 4, 5];
  var values = [r"\ge", r"\le", r">", r"<"];
  var rValue = ["", ""];
  var turns = "lo";

  var value = Text("ro");
  int county = 0;
  String turn() {
    var turnie = values[county];
    county++;
    return turnie;
  }

  void _change() {
    value = Text("");
    print("change");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //header
          Row(
            // Numbering

            children: [
              //numbering for header
              // ignore: prefer_const_constructors
              Text("1.1",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              //solve for x
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child:
                      // text for header
                      Text("Solve for x:",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: //the first 1.1.1
                Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // Numbering

                    children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Text(num[0],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),

                  //1.1.1 Q

                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: DefaultTextStyle.merge(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          //pass in the question
                          child: CaTeX(_q_1.toString() + " = 0"))),
                  Spacer(),
                  Container(
                    //todo get screen width use to size left
                    //padding: EdgeInsets.only(left: 10),
                    child: Text("(" + mark[1].toString() + ")",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),

          // answer box , x1 and x2

          Visibility(
            child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  //constraints: padding()
                  children: <Widget>[
                    //input text field
                    Flexible(
                        child: Container(
                            margin: EdgeInsets.all(20),
                            constraints:
                                BoxConstraints(maxWidth: 80, maxHeight: 35),
                            child: TextFormField(
                              onChanged: (text) {
                                xs[0][0] = text;
                                print(xs);
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "x1",
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r"[0-9.-]"))
                              ],
                            ))),
                    Visibility(
                        child: Flexible(
                            child: Container(
                                margin: EdgeInsets.all(20),
                                constraints:
                                    BoxConstraints(maxWidth: 80, maxHeight: 35),
                                child: TextFormField(
                                  onChanged: (text) {
                                    xs[0][1] = text;
                                    print(xs);
                                  },
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "x2"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r"[0-9.-]"))
                                  ],
                                ))),
                        visible: widget.show),
                  ],
                )),
            //visibility of the answer box
            visible: widget.show,
          ),

          //second 1.1.2
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(children: [
              Container(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                child: Text(num[1],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),

              //1.1.2 Q

              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: DefaultTextStyle.merge(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      //pass in the question
                      child: CaTeX("x^2+2x+1= 0"))),
              Spacer(),
              Container(
                //todo get screen width use to size left
                //padding: EdgeInsets.only(left: 10),
                child: Text("(" + mark[2].toString() + ")",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ]),
          ),

          Container(
            padding: EdgeInsets.only(left: 0, top: 10),
            child: Text(
              "(Correctto two decimal places)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          // answer box , x1 and x2 Q1.1.2

          Visibility(
            child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  //constraints: padding()
                  children: <Widget>[
                    //input text field
                    Flexible(
                        child: Container(
                            margin: EdgeInsets.all(20),
                            constraints:
                                BoxConstraints(maxWidth: 80, maxHeight: 35),
                            child: TextFormField(
                              onChanged: (text) {
                                xs[1][0] = text;
                                print(xs);
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "x1",
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r"[0-9.-]"))
                              ],
                            ))),
                    Visibility(
                        child: Flexible(
                            child: Container(
                                margin: EdgeInsets.all(20),
                                constraints:
                                    BoxConstraints(maxWidth: 80, maxHeight: 35),
                                child: TextFormField(
                                  onChanged: (text) {
                                    xs[1][1] = text;
                                    print(xs);
                                  },
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "x2"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r"[0-9.-]"))
                                  ],
                                ))),
                        visible: true),
                  ],
                )),
            visible: widget.show,
          ),

          // close answer box and full q
          // 1.1.3

          //1.1.3
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Numbering

                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Text(num[2],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),

                  //1.1.3 Q

                  Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: DefaultTextStyle.merge(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          //pass in the question
                          child: CaTeX("(x+3)(x-1) < 0"))),
                  Spacer(),
                  Container(
                    //todo get screen width use to size left
                    //padding: EdgeInsets.only(left: 10),
                    child: Text("(" + mark[1].toString() + ")",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),

          // answer box , x1 and x2 intervals
          Container(
            child: Visibility(
              child: Container(
                  padding: EdgeInsets.only(left: 60, top: 20),
                  child: Row(
                    //constraints: padding()
                    children: <Widget>[
                      //input text field
                      Flexible(
                          child: Container(
                              margin: EdgeInsets.only(),
                              constraints:
                                  BoxConstraints(maxWidth: 60, maxHeight: 35),
                              child: TextFormField(
                                onChanged: (text) {
                                  // first answer in the interval
                                  xs[2][0] = text;
                                  print(xs);
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "x1",
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r"[0-9.-]"))
                                ],
                              ))),
                      Flexible(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (count[0] < 3) {
                              if (count[0] <= 0)
                                rValue[0] = values[count[0]];
                              else if (count[0] <= 1)
                                rValue[0] = values[count[0]];
                              else if (count[0] <= 2)
                                rValue[0] = values[count[0]];
                              else if (count[0] <= 3)
                                rValue[0] = values[count[0]];
                              count[0]++;
                            } else {
                              count[0] = 0;
                              rValue[0] = values[count[0]];
                            }
                          });
                        },
                        child: CaTeX(values[count[0]]),
                      )),

                      Container(
                        constraints: BoxConstraints(maxWidth: 40),
                        child: TextButton(
                            onPressed: () {},
                            child: CaTeX("x"),
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                splashFactory: NoSplash.splashFactory)),
                      ),

                      Flexible(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  if (count[1] < 3) {
                                    if (count[1] <= 0)
                                      rValue[0] = values[count[0]];
                                    else if (count[1] <= 1)
                                      rValue[0] = values[count[0]];
                                    else if (count[1] <= 2)
                                      rValue[0] = values[count[0]];
                                    else if (count[1] <= 3)
                                      rValue[0] = values[count[0]];
                                    count[1]++;
                                  } else {
                                    count[1] = 0;
                                    //new
                                    // rValue[0] = values[count[0]];

                                  }
                                });
                              },
                              child: CaTeX(values[count[1]]))),

                      Visibility(
                          child: Flexible(
                              child: Container(
                                  margin: EdgeInsets.only(),
                                  constraints: BoxConstraints(
                                      maxWidth: 60, maxHeight: 35),
                                  child: TextFormField(
                                    onChanged: (text) {
                                      // save the answer x1
                                      xs[2][1] = text;
                                      //print(xs);
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "x2"),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r"[0-9.-]"))
                                    ],
                                  ))),
                          visible: widget.show),
                    ],
                  )),
              //visibility of the answer box
              visible: widget.show,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            child: //the fourth 1.1.4
                Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // Numbering

                    children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Text(num[3],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),

                  //1.1.4 Q

                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: DefaultTextStyle.merge(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          //pass in the question
                          child: CaTeX("(x+3)(x-1) = 0"))),
                  Spacer(),
                  Container(
                    //todo get screen width use to size left
                    //padding: EdgeInsets.only(left: 10),
                    child: Text("(" + mark[1].toString() + ")",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),

          // answer box , x1 and x2

          Visibility(
            child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  //constraints: padding()
                  children: <Widget>[
                    //input text field
                    Flexible(
                        child: Container(
                            margin: EdgeInsets.all(20),
                            constraints:
                                BoxConstraints(maxWidth: 80, maxHeight: 35),
                            child: TextFormField(
                              onChanged: (text) {
                                xs[3][0] = text;
                                print(xs);
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "x1",
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r"[0-9.-]"))
                              ],
                            ))),
                    Visibility(
                        child: Flexible(
                            child: Container(
                                margin: EdgeInsets.all(20),
                                constraints:
                                    BoxConstraints(maxWidth: 80, maxHeight: 35),
                                child: TextFormField(
                                  onChanged: (text) {
                                    xs[3][1] = text;
                                    print(xs);
                                  },
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "x2"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r"[0-9.-]"))
                                  ],
                                ))),
                        visible: widget.show),
                  ],
                )),
            //visibility of the answer box
            visible: widget.show,
          ),
        ],
      ),
    );
  }
}

qna() {
  var answers = [0, 2];
  Random rand = new Random();
  answers[0] = rand.nextInt(10) + 1;
  answers[1] = rand.nextInt(10) + 1;
  var b = answers[0] + answers[1];
  var c = answers[1] * answers[0];
  String q = "x^2 + " + b.toString() + "x " + c.toString();
  return [answers, q];
}
