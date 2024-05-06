import 'dart:math';

void main() {
  int n =3 + Random().nextInt(15 - 3);
  int multiply = 1;
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      multiply *= i;
    }
  }
  print('n = $n');
  print('Произведение всех чисел крастных чисел меньше n и кратных 3 = $multiply');
}
