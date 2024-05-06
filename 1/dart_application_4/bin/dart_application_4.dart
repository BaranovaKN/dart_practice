import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Введите начало диапазона: ");
  int min = int.parse(stdin.readLineSync()!);
  stdout.write("Введите конец диапазона: ");
  int max = int.parse(stdin.readLineSync()!);
  List randomList = ListGenerate(min, max);
  print("Сгененрированный массив:");
  for (var i = 0; i < randomList.length; i++) {
    stdout.write('${randomList[i]} ');
  }
}

List<int> ListGenerate(int min, int max) {
  List<int> randomList = List.generate(10, (index) => Random().nextInt(max - min) + min);
  return randomList;
}
