import 'dart:math';

Random rand = new Random();
// EC 1.1.2 m = + - b and c
var xy_1 = ["",""], ans_2 = ["", "", ""], y1, y2 ;

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
  if ( b_c == 0 && c_c == 0) {
    // numbers are even
    m = 0;
  } else if (b_c > 0 && c_c > 0) {
    // both numbers are odd 

  } else if (b_c > 0 && c_c == 0) {
    // b is odd and c is even
  } else if (b_c == 0 && c_c > 0) {
    // b is even and c is odd
  }

  //print("hello");

  // the making of a2 and a1
  var ar = (rand.nextInt(9) + 2), r , b1 , b2, c1 , c2;
   var a1  = ar + a ;
  var a2 = ar * -1;
  r = (rand.nextInt(5) + 2) *-1;

  b1 = a2 * r;
  if (b < 0) {
    b2 = b1 - b;
  } else {
    b2 = (b1) - b;  
  }
  
  c2 = b2 * r;
  if ( c < 0 && b2 < 0) {
    print("!");
    c1 = (c2*-1) - c;
    
  } else if (b2 > 0 && c > 0) {
    //positive c1
    print("@");
    c1 = (c2 * -1) - c;
  } else {
    c1 = (c + c2) * -1;
  }
  
  // c_C
  var a1_c = a1.toString(), a2_c = a2.toString(), b1_c = b1.toString(), b2_c = b2.toString(), c1_c = c1.toString(), c2_c = c2.toString(), r_c = r.toString();
  var r2 = r *-1;
  var r2_c = r2.toString();
  //display the eq
  
  print("x_1 "+ x_1.toString() + " x_2 "+ x_2.toString());
  if ( b2 > 0) {
    if (a1 % 2 == 0 && c1 % 2 == 0) {
      var a1_2 = a1 / 2 , c1_2 = c1 / 2;
      var a1_2_c = a1_2.toString(), c1_2_c = c1_2.toString();
      
      xy_1[0] = "x = 2y + "+ r2_c;
      //print("x = 2y + "+ r2_c);
      ans_2[0] = "2y = x "+ r_c;
      //print("2y = x "+ r_c);
      // y = ?
      y1 = ((x_1*-1) + r ) / 2 ;
      y2 = ((x_2*-1) + r) / 2;
      ans_2[1] = "y = (x "+r_c+")/2";
      //print("y = (x "+r_c+")/2");

      xy_1[1] = a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y";
      //print(a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y");
      ans_2[2] = a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" + "+b2_c+ "((x " + r_c+ "/2)";
      //print(a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" + "+b2_c+ "((x " + r_c+ "/2)");

    } else {
    
    xy_1[0] = "x = y + "+r2_c;
    //print("x = y "+r2_c);
    ans_2[0] = "y = x "+r_c;
    //print("y = x "+r_c);
    // y = ?
    y1 = (x_1*-1) +r ;
    y2 = (x_2*-1) + r ;

    
    xy_1[1] = a1_c+"x^2 "+ a2_c + "xy = "+ " "+c1_c +" + "+b2_c+ "y";
    //print(a1_c+"x^2 "+ a2_c + "xy = "+ " "+c1_c +" + "+b2_c+ "y");
    ans_2[1] = a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ " "+c1_c +" + "+b2_c+ "(x " + r_c+ ")";
    //print(a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ " "+c1_c +" + "+b2_c+ "(x " + r_c+ ")");
    ans_2[2] = a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" + "+b2_c+ "x " + c2_c;
    //print(a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" + "+b2_c+ "x " + c2_c);
    }
  } else if ( b2 < 0) {
     if (a1 % 2 == 0 && c1 % 2 == 0) {
      var a1_2 = a1 / 2 , c1_2 = c1 / 2;
      var a1_2_c = a1_2.toString(), c1_2_c = c1_2.toString();
      
      xy_1[0] = "x = 2y + "+ r2_c; 
      //print("x = 2y + "+ r2_c);
      ans_2[0] = "2y = x "+ r_c;
      //print("2y = x "+ r_c);
      // y = ?
      y1 = ((x_1*-1) + r ) / 2 ;
      y2 = ((x_2*-1) + r) / 2;
      ans_2[1] = "y = (x "+r_c+")/2";
      //print("y = (x "+r_c+")/2");

      xy_1[1] = a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y";
      //print(a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y");
      ans_2[2] = a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" "+b2_c+ "((x " + r_c+ "/2)";
      //print(a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" "+b2_c+ "((x " + r_c+ "/2)");

    } else  {
    
    xy_1[0] = "x = y + "+r2_c;
    //print("x = y "+r2_c);
    ans_2[0] = "y = x "+r_c;
    //print("y = x "+r_c);
    // y = ?
    y1 = (x_1*-1) +r ;
    y2 = (x_2*-1) + r ;
    
    xy_1[1] = a1_c+"x^2 "+ a2_c + "xy = "+ " "+c1_c +" + "+b2_c+ "y";
    //print(a1_c+"x^2 "+ a2_c + "xy = "+ " "+c1_c +" + "+b2_c+ "y");
    ans_2[1] = a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ " "+c1_c +" "+b2_c+ "(x " + r_c+ ")"; 
    //print(a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ " "+c1_c +" "+b2_c+ "(x " + r_c+ ")");
    ans_2[2] = a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" "+b2_c+ "x + " + c2_c;
    //print(a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" "+b2_c+ "x + " + c2_c);
    }
  } else {
     print("else");
     if (a1 % 2 == 0 && c1 % 2 == 0) {
       
      var a1_2 = a1 / 2 , c1_2 = c1 / 2;
      var a1_2_c = a1_2.toString(), c1_2_c = c1_2.toString();
      
      xy_1[0] = "x = 2y + "+ r2_c;
      //print("x = 2y + "+ r2_c);
      ans_2[0] = "2y = x "+ r_c;
      //print("2y = x "+ r_c);
      // y = ?
      y1 = ((x_1*-1) + r ) / 2 ;
      y2 = ((x_2*-1) + r) / 2;
      ans_2[1] = "y = (x "+r_c+")/2";
      //print("y = (x "+r_c+")/2");

      xy_1[1] = a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y";
      //print(a1_2_c+"x^2 "+ a2_c + "xy = "+ " "+c1_2_c +" + "+b2_c+ "y");
      ans_2[2] = a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" + "+b2_c+ "((x " + r_c+ "/2)";
      //print(a1_2_c+"x^2 "+ a2_c + "x((x "+r_c +")/ 2) = "+ " "+c1_2_c +" + "+b2_c+ "((x " + r_c+ "/2)");

    } else {
      
      xy_1[0] = "x = y + "+r2_c;
      //print("x = y + "+r2_c); //answer 
      // y = ?
      y1 = (x_1*-1) +r ;
      y2 = (x_2*-1) + r ;
    
      ans_2[0] = "y = x "+r_c;
      //print("y = x "+r_c); // q
      xy_1[1] = a1_c+"x^2 "+ a2_c + "xy = "+ ""+c1_c +" + "+b2_c+ "y";
      //print(a1_c+"x^2 "+ a2_c + "xy = "+ ""+c1_c +" + "+b2_c+ "y");
      ans_2[1] = a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ ""+c1_c +" + "+b2_c+ "(x " + r_c+ ")";
      //print(a1_c+"x^2 "+ a2_c + "x(x "+r_c +") = "+ ""+c1_c +" + "+b2_c+ "(x " + r_c+ ")");
      ans_2[2] = a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" + "+b2_c+ "x + " + c2_c;
      //print(a1_c+"x^2 "+ a2_c + "x^2 + "+ b1_c + "x = "+c1_c +" + "+b2_c+ "x + " + c2_c);
    }
  }

  
  
  return [xy_1 , ans_2, _stf, [y1, y2]];
}


void main() {
  // EC (x + 8)(x - 1)
  //print("hello");

  // stf
  //print(mk_f(1, 11).toString());
  print(mk_f(mark_1()[0], mark_1()[1]));
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


