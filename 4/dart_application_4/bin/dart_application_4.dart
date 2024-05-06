import 'dart:io';

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
  int res = 0;
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) {
      res++;
    }
  }
  print("количество одинаковых рядом стоящих чисел: $res");
}