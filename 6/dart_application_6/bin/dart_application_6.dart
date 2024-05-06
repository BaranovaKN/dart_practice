import 'dart:math';

void main() {
  var more = [];
  var less = [];
  int equally = 0;

  filling() {
    var rng = new Random();
    List<double> l = new List.generate(
        25, (j) => -100 + (100 - (-100)) * Random().nextDouble());
    return l;
  }

  var temp = filling();

  lesscount(temp) {
    for (int i = 0; i < temp.length; i++) {
      if (temp[i] < 0) {
        less.add(temp[i]);
      }
    }
    return less;
  }
  morecount(temp) {
    for (int i = 0; i < temp.length; i++) {
      if (temp[i] > 0) {
        more.add(temp[i]);
      }
    }
    return more;
  }

  print(temp);
  print("чисел меньше нуля: ${lesscount(temp)}");
  print(" ");
  print("чисел больше нуля: ${morecount(temp)}");
}
