import 'dart:io';

void main() {
  stdout.write("Введите количество строк и столбцов: ");
  int n = int.parse(stdin.readLineSync()!);
  List<List<int>> nums = List.generate(n, (i) => List.generate(n, (j) => 1));
  for (int i = 1; i < n; i++) {
    for (int j = 1; j < n; j++) {
      nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
    }
  }
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (nums[i][j].toString().length == 1) {
        stdout.write(" ${nums[i][j]}  ");
      } else {
        stdout.write("${nums[i][j]}  ");
      }
    }
    print("");
  }
}
