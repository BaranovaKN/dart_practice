import 'dart:io';
import 'dart:math';

void main() {
  List<int> array =  List.generate(10, (index) => Random().nextInt(10 - (-10)) + (-10));
  print("Сгененрированный массив:");
  for (var i = 0; i < array.length; i++) {
    stdout.write('${array[i]} ');
  }
}