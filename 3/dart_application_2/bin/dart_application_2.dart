import 'dart:io';

void main(List<String> arguments) {
  List<String> lines = File('nums.txt').readAsLinesSync();

  List<int> nums = [];

  for (var line in lines) {
    List<String> numbers = line.split(' ');
    for (var number in numbers) {
      nums.add(int.parse(number));
    }
  }

  nums.removeWhere((num) => num % 2 == 0);

  var sink = File('nums.txt').openWrite();
  for (int j = 0; j < nums.length; j++) {
    sink.write("${nums[j]} ");
  }

  sink.close();
  
  print(nums);
}