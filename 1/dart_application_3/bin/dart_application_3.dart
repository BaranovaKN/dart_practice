import 'dart:io';

void main() {
  List<String> list = [];
  while(true)
  {
    stdout.write("Введите текст: ");
    String usertext = stdin.readLineSync()!;
    if(usertext!=" ")
    {
      list.add(usertext);
    }
    else
    {
      break;
    }
  }
  String min = list[0];
  int indexMin = list[0].length;
  String max =list[0];
  int indexMax = list[0].length;
  for (var i = 0; i < list.length; i++) {
    if(indexMin>list[i].length)
    {
      indexMin = list[i].length;
      min = list[i];
    } else if(indexMax < list[i].length)
    {
      indexMax = list[i].length;
      max = list[i];
    }
  }
  print('Самый короткий элемент списка - $min');
  print('Самый длинный элемент списка - $max');
}