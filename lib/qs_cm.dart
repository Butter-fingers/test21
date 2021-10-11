// ignore_for_file: use_key_in_widget_constructors

import 'dart:ffi';

import 'package:catex/catex.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class Qs extends StatelessWidget {
  final String name,numm;
  final int num,mark;
  
  //int col = 4;
  //List<int> me = [];

  //var num = [][0];
  const Qs({required this.num, required this.name, required this.mark, required this.numm});

  Widget Cus(int num) {

    void droo() {
      
    }
    bool my = false, button = true;
    if (num == 0) {
      return Container(
        child:     
          Row(
            // Numbering 
            children: [
              Text(numm,
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
              )),
              //solve for x
              Container(
                padding: EdgeInsets.only(left: 20),
                child: 
                Text(name,
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
              ))
              ),
            ],
          ),
      );
    } else if(num ==1) {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 20),
        child:
        
        Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Numbering 
            children: [
              Text(numm,
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
              )),
              //solve for x
              
              Container(
                padding: EdgeInsets.only(left: 20,),
                child: 
                DefaultTextStyle.merge(
              style: TextStyle(color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
              ),
                child: CaTeX(name)
              )
              ),
              Spacer(),
              Container(
                //todo get screen width use to size left
                //padding: EdgeInsets.only(left: 10),
                child: 
                Text("("+mark.toString()+")",
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
              )),
              
              ),
                  
            ]));
    } else if(num == 3) {
     return Container(
            padding: EdgeInsets.only(left: 40),
            child: 
              Row(
              //constraints: padding()
              children: <Widget>[
                //input text field 
              Flexible(
              child: 
              Container(
                margin: EdgeInsets.all(20),
                constraints: BoxConstraints(maxWidth: 80, maxHeight: 35),
                child: TextFormField(
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "x1",
                   
                 ),
                 keyboardType: TextInputType.number,
                 inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r"[0-9.-]"))],
                 )
                 
                 )
              
            ),
            Visibility(child: Flexible(
              child: 
              Container(
                margin: EdgeInsets.all(20),
                constraints: BoxConstraints(maxWidth: 80, maxHeight: 35),
                child: TextFormField(
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "x2"
                 ),
                 keyboardType: TextInputType.number,
                 inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r"[0-9.-]"))],
                 
                 )
                 )
              
            ),
            visible: true),
            

            // plus button
            /*Visibility(child: 
            IconButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                my = true;
                button = false;
                print("pressed");
              }, icon: Icon(Icons.add, color: Colors.blue,),
              splashRadius: 20),
              visible: button,)*/
            
            ],)
        
        
          );
  } else {
    return Container(
      padding: EdgeInsets.only(left:60, top: 10),
              child:
              Text("(Correctto two decimal places)", style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
    );
  }

    
  } 

  @override
  Widget build(BuildContext context) {
    return Cus(num);
    
  }
}