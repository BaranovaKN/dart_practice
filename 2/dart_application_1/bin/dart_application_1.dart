import 'dart:io';

void main() {
  List<int> array = [];
  array.add(300);
  for (var i = 0; i < 100; i++) {
    array.add(array[i]-3);
    stdout.write('${array[i]} ');
  }
}