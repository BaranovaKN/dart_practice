import 'dart:io';

void main(List<String> arguments) {
  List<String> temp = [];
  List<String> file = File('numsTask3.txt').readAsLinesSync();
  for (var line in file) {
    var sp = line.split(',');
    temp += sp;
  }
  List<int> nums = temp.map(int.parse).toList();
  int min = nums[0];
  int max = nums[0];
  for (int i = 0; i < nums.length; i++){
    if(min > nums[i]){
      min = nums[i];
    } else if(max < nums[i]){
      max = nums[i];
    }
  }
  double res = max / min;
  print("Максимальный элемент больше минимального в $res раз");
}
