import 'dart:math';

Map<String, double> averagetemperature(Map<String, dynamic> tempyear) {
  Map<String, double> res = {};
  for (String monthName in tempyear.keys) {
    double mean = 0;
    for (int i = 0; i < 30; i++) {
      mean += tempyear[monthName][i];
    }
    mean/=30;
    res[monthName]=mean;
  }
  return res;
}

void main() {
  Map<String, dynamic> tempyear = {
    'January': List.generate(30, (i) => -35 + Random().nextInt(-20 - (-35))),
    'February': List.generate(30, (i) => -30 + Random().nextInt(-15 - (-30))),
    'March': List.generate(30, (i) => -20 + Random().nextInt(-10 - (-20))),
    'April': List.generate(30, (i) => -10 + Random().nextInt(5 - (-10))),
    'May': List.generate(30, (i) => 10 + Random().nextInt(18 - 10)),
    'June': List.generate(30, (i) => 15 + Random().nextInt(30 - 15)),
    'July': List.generate(30, (i) => 20 + Random().nextInt(40 - 20)),
    'August': List.generate(30, (i) => 15 + Random().nextInt(30 - 15)),
    'September': List.generate(30, (i) => 0 + Random().nextInt(25 - 0)),
    'October': List.generate(30, (i) => -5 + Random().nextInt(15 - (-5))),
    'November': List.generate(30, (i) => -20 + Random().nextInt(-10 - (-20))),
    'December': List.generate(30, (i) => -30 + Random().nextInt(-15 - -30))
  };
  for (final element in tempyear.entries) {
    print('${element.key}: ${element.value}');
  }
  Map<String,double> res = averagetemperature(tempyear);
  print('object');
  for(final element in res.entries){
    print('${element.key}: ${element.value}');
  }
}
