import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> lines = new File('nums.txt').readAsLinesSync();
  for (var line in lines) {
    lines = line.split(' ');
  }
  List<int> height = lines.map(int.parse).toList();

  int area = 0;

  for (int i = 0; i < height.length; i++) {
    for (int j = i + 1; j < height.length; j++) {
      area = max(area, min(height[j], height[i]) * (j - i));
    }
  }

  print(area);
}