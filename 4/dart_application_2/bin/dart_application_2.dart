import 'dart:io';

void main(List<String> arguments) {
  List<String> file = new File('numsTask2.txt').readAsLinesSync();
  for (var line in file) {
    var splited = line.split(';');
    file = splited;
  }
  List<double> nums = file.map(double.parse).toList();
  double sum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > 0) {
      sum += nums[i];
    }
    else if(nums[i]==0){
      break;
    }
  }
  print(sum);
}