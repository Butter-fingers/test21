// ignore_for_file: avoid_print, non_constant_identifier_names, file_names

import 'dart:math';

Random rand = new Random();
// EC 1.1.2 m = + - b and c
void main() {
  // EC (x + 8)(x - 1)
  print("hello");

  // stf
  //print(mk_f(1, 11).toString());
  // print(mk_f(mark_1()[0], mark_1()[1]));
}

resultss() {
  print(mk_f(mark_1()[0], mark_1()[1]));
}

mark_1() {
  var lhs;
  var rhs;
  // lhs -
  // rhs +
  // x^2 + 6x - 16 = 0
  // (x + 8)(x - 2)
  // x1 = -8, x2 = 2
  // range 1 -10

  var num = rand.nextInt(4) + 1;
  if (num == 1) {
    lhs = (rand.nextInt(10) + 1);
    rhs = rand.nextInt(10) + 1;
  } else if (num == 2) {
    lhs = (rand.nextInt(10) + 1) * -1;
    rhs = rand.nextInt(10) + 1;
  } else if (num == 3) {
    lhs = (rand.nextInt(10) + 1);
    rhs = (rand.nextInt(10) + 1) * -1;
  } else if (num == 4) {
    lhs = (rand.nextInt(10) + 1) * -1;
    rhs = (rand.nextInt(10) + 1) * -1;
  }

  return [lhs, rhs];
}

mk_f(x_1, x_2) {
  x_2 = x_2 * -1;
  x_1 = x_1 * -1;
  var a = 1;
  var b = (x_1 + x_2);
  var c = x_1 * x_2;
  var b_s = b.toString(), c_s = c.toString();
  var _stf;
  if (a == 1 && b != 0 && b > 0 && c > 0) {
    print("first");
    _stf = "x^2 + " + b_s + "x + " + c_s + " = 0";
  } else if (a == 1 && b > 0 && c < 0) {
    print("sec");
    _stf = "x^2 + " + b_s + "x " + c_s + " = 0";
  } else if (b < 0 && c > 0) {
    print("third");
    _stf = "x^2 " + b_s + "x + " + c_s + " = 0";
  } else if (b == 0 && c > 0) {
    print("fourth");
    _stf = "x^2 + " + c_s + " = 0";
  } else if (b == 0 && c < 0) {
    print("fifth");
    _stf = "x^2 " + c_s + " = 0";
  } else if (b < 0 && c < 0) {
    print("sixth");
    _stf = "x^2 " + b_s + "x " + c_s + " = 0";
  } else {
    print("elsie");
    _stf = "x^2 + " + b_s + "x + " + c_s + " = 0";
  }

  return [
    mk_f_2(x_1 * -1, x_2 * -1),
    _stf,
    brac(x_1, x_2),
    [x_1 * -1, x_2 * -1]
  ];
}

mk_f_2(x_1, x_2) {
  x_2 = x_2 * -1;
  x_1 = x_1 * -1;
  var m = rand.nextInt(3) + 2;
  var a = 1 * m;
  var b = (x_1 + x_2) * m;
  var c = x_1 * x_2 * m;
  var a_s = a.toString(), b_s = b.toString(), c_s = c.toString();
  var _stf;
  if (b != 0 && b > 0 && c > 0) {
    print("first");
    _stf = a_s + "x^2 + " + b_s + "x + " + c_s + " = 0";
  } else if (b > 0 && c < 0) {
    print("sec");
    _stf = a_s + "x^2 + " + b_s + "x " + c_s + " = 0";
  } else if (b < 0 && c > 0) {
    print("third");
    _stf = a_s.toString() + "x^2 " + b_s + "x + " + c_s + " = 0";
  } else if (b == 0 && c > 0) {
    print("fourth");
    _stf = a_s.toString() + "x^2 + " + c_s + " = 0";
  } else if (b == 0 && c < 0) {
    print("fifth");
    _stf = a_s.toString() + "x^2 " + c_s + " = 0";
  } else if (b < 0 && c < 0) {
    print("sixth");
    _stf = a_s.toString() + "x^2 " + b_s + "x " + c_s + " = 0";
  } else {
    print("elsie");
    _stf = a_s.toString() + "x^2 + " + b_s + "x + " + c_s + " = 0";
  }

  var c_c = c % 2, b_c = b % 2;

  // m = an odd number or even if both are even
  if (b_c == 0 && c_c == 0) {
    // numbers are even
    m = 0;
  } else if (b_c > 0 && c_c > 0) {
    // both numbers are odd

  } else if (b_c > 0 && c_c == 0) {
    // b is odd and c is even
  } else if (b_c == 0 && c_c > 0) {
    // b is even and c is odd
  }

  return [_stf];
}

brac(x_1, x_2) {
  var x_1_s = x_1.toString(), x_2_s = x_2.toString();

  var br;

  if (x_1 < 0 && x_2 < 0) {
    br = "(x " + x_1_s + ")(x " + x_2_s + ")";
  } else if (x_1 < 0 && x_2 > 0) {
    br = "(x " + x_1_s + ")(x + " + x_2_s + ")";
  } else if (x_1 > 0 && x_2 > 0) {
    br = "(x + " + x_1_s + ")(x + " + x_2_s + ")";
  } else if (x_1 > 0 && x_2 < 0) {
    br = "(x + " + x_1_s + ")(x " + x_2_s + ")";
  }

  return [br];
}

// 1.1.3
