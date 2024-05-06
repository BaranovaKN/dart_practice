import 'dart:io';

void main() {
  List<int> array =[];
  array.add(1);
  for (var i = 0; i < 10; i++) {
    array.add(array[i]+2);
    stdout.write('${array[i]} ');
  }
}