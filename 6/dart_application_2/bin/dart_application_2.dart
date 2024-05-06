import 'dart:io';

void main(List<String> arguments) {
  String text = '';
  List<String> file = File('numsTask2.txt').readAsLinesSync();
  for (var i = 0; i < file.length; i++) {
    text += '${file[i]} ';
  }
  print(text);
}