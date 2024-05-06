import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('numsTask5.txt').readAsLinesSync();
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
  int maxv = nums.reduce(max);
  int maxi = nums.indexOf(maxv);
  int minv = nums.reduce(min);
  int i = nums.indexOf(minv) + 1;

  int gg = maxi - i;
  for (i; i < maxi; i++) {
    num += nums[i];
  }
  var average = num / gg;

  print(
      'среднее арифметическое элементов расположенных между минимальным и максимальным: $average');
}