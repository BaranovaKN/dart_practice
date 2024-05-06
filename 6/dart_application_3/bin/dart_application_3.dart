import 'dart:io';

void main(List<String> arguments) {
  stdout.write('Введите число ');
  int a = int.parse(stdin.readLineSync()!);
  if (a % 2 == 0 && a % 10 == 0) {
    print('число является четным и кратным 10');
  } else {
    print('число не является четным и кратным 10');
  }
  if (a % 2 == 0 && a % 10 != 0) {
    print('число является четным, но не кратным 10');
  }
}
