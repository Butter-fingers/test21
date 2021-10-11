// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  print(qna());
}

// random numbers

// return question and final answer

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
