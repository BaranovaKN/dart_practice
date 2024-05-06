import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('numsTask3.txt').readAsLinesSync();
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

  int num = 0;
  int min_ind = nums.indexOf(nums.reduce(min));
  int i = 0;
  for (i; i < min_ind; i++) {
    num += nums[i];
  }
  var average = num / i;
  print('среднее арифметическое элементов расположенных до минимального: $average');
}