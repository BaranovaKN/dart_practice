import 'dart:io';

void main(List<String> arguments) {
  List<String> file = File('numsTask1.txt').readAsLinesSync();
  for (var line in file) {
    var splited = line.split(' ');
    file = splited;
  }
  for (int i = 0; i < file.length; i++) {
    if (file[i].length % 2 != 0) {
      stdout.write('${file[i]} ');
    }
  }
}