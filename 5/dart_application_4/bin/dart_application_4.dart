import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('numsTask4.txt').readAsLinesSync();
  for (var line in file) {
    var splited = line.split(' ');
    file = splited;
  }
  List<String> simbol = [];
  for (var i = 0; i < file.length; i++) {
    if (file[i] != '') {
      simbol.add(file[i]);
    }
  }
  List<int> nums = simbol.map(int.parse).toList();
  int m = nums.reduce(max);

  int num = 0;
  for (int i = 0; i < nums.length; i++) {
    if (m - nums[i] == 1) {
      num += nums[i];
    }
  }
  print('Cуммa элементов, отличающихся от максимального на 1: $num');
}

