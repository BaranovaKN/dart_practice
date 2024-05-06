import 'dart:io';

void main() {
  List<int> array = [];
  int sum = 0;
  int multiply = 1;
  while(true)
  {
    stdout.write("Введите число: ");
    int usernum = int.parse(stdin.readLineSync()!);
    if(usernum!=0)
    {
      array.add(usernum);
      sum+=usernum;
      multiply*=usernum;
    }
    else
    {
      break;
    }
  }
  double mean = sum / array.length;
  print('Сумма всех элементов - $sum');
  print('Произведение всех элементов - $multiply');
  print('Среднее значение всех элементов - $mean');
}