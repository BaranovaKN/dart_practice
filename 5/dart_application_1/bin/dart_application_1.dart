import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('numsTask1.txt').readAsLinesSync();
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
  int res = 0;
  int min_ind = nums.indexOf(nums.reduce(min));
  for (int i = min_ind; i < nums.length; i++) {
    res *= nums[i];
  }
  print('произведение элементов после минимального: $res');
}
