import 'dart:core';
import 'dart:io';

void main(List<String> arguments) {
  List<String> file = File('numsTask2.txt').readAsLinesSync();
  var line = File('numsTask2.txt');
  var sink = line.openWrite();

  for (var line in file) {
    var splited = line.split(';');
    file = splited;
  }
  List<String> simbol = [];
  for (var i = 0; i < file.length; i++) {
    if (file[i] != '') {
      simbol.add(file[i]);
    }
  }
  List<double> nums = simbol.map(double.parse).toList();

  for (int j = 0; j < nums.length; j++) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] >= nums[i + 1]) {
        var temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
      }
    }
  }
  for (int j = 0; j < nums.length; j++) {
    sink.write("${nums[j]} ");
  }
  sink.close();
}
