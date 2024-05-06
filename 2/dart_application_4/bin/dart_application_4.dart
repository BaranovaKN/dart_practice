import 'dart:io';
import 'dart:math';

void main() {
  List<List<int>> tempyear = [];
  for (var i = 0; i < 12; i++) {
    if(i<4)
    {
      tempyear.add(List.generate(30, (j) => -30 + Random().nextInt(-15 - (-30))));
    }
    else if (i<6)
    {
      tempyear.add(List.generate(30, (j) => -10 + Random().nextInt(15 - (-10))));
    }
    else if (i<9)
    {
      tempyear.add(List.generate(30, (j) => 15 + Random().nextInt(30 - (15))));
    }
    else if (i<12)
    {
      tempyear.add(List.generate(30, (j) => -20 + Random().nextInt(10 - (-20))));
    }
  }
  print('Темпрература за весь год:');
  for (var i = 0; i <12; i++) {
    for (var j = 0; j < 30; j++) {
      stdout.write('${tempyear[i][j]} ');
    }
    
  }
  print('средняя температура по месяцам');
  print(Temperature(tempyear));
  
}

List<double> Temperature(List<List<int>> tempyear)
{
  List <double> res=[];
  for(int i = 0; i<12; i++)
  {
    double mean = 0;
    for(int j = 0; j<30; j++)
    {
      mean+=tempyear[i][j];
    }
    mean ~/ 30;
    res.add(mean);
  }
  return res;
}