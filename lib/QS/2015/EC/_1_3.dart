import 'dart:math';

import '_1_2_.dart';

void main() {
  var x = mark_1();
  var x_1 = x[0], x_2 = x[1];
  print(x);
  var num = rand.nextInt(5) + 2, x_num, x_num_2;
  var x_1_1 = x_1 * -1, x_2_2 = x_2 * -1;
  var x_1_1_c = x_1_1.toString(), x_2_2_c = x_2_2.toString(), x_1_c = x_1.toString(), x_2_c = x_2.toString();
  var num_c = num.toString(), x_num_c = x_num.toString(), x_num_2_c = x_num_2.toString();
  var ans_1, ans_2, ans_3;
 // x_num ;
  if (x_1_1 < 0 && x_2_2 < 0) {
    ans_1 = "("+num_c+"^x "+ x_1_1_c + ")("+num_c+"^x "+ x_2_2_c + ") = 0";
    ans_2 = num_c+"^x = "+ x_1_c + " or "+num_c+ "^x = "+x_2_c;
  } else if ( x_1_1 < 0 && x_2_2 > 0 ) {
    ans_1 = "("+num_c+"^x "+ x_1_1_c + ")("+num_c+"^x + "+ x_2_2_c + ") = 0";

  } else if (x_1_1 > 0 && x_2_2 > 0) {
    ans_1 = "("+num_c+"^x + "+ x_1_1_c + ")("+num_c+"^x + "+ x_2_2_c + ") = 0";
  } else {
    // x_1 > 0, x_2 <0
    ans_1 = "("+num_c+"^x + "+ x_1_1_c + ")("+num_c+"^x "+ x_2_2_c + ") = 0";
  }

  ans_2 = num_c+"^x = "+ x_1_c + " or "+num_c+ "^x = "+x_2_c;

  ans_3 = "x = "+x_num_c + " or x = "+ x_num_2_c;




  

}