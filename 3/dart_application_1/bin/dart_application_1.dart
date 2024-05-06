import 'dart:io';

void main(List<String> arguments) {
  int check = 0;
  var output = new File('output.txt');
  var sink = output.openWrite();

  List<String> lines = new File('input.txt').readAsLinesSync();

  int amout = (int.parse(lines[1]));

  List<String> temp = [];
  temp += lines[0].split(' ');
  List<int> winlist = [];
  winlist = temp.map(int.parse).toList();
  temp = [];

  for (int i = 0; i < amout; i++) {
    temp += lines[i + 2].split(' ');
    List<int> ticket = temp.map(int.parse).toList();
    temp = [];
    check = 0;
    for (int j = 0; j < winlist.length; j++) {
      for (int k = 0; k < ticket.length; k++) {
        if (ticket[k] == winlist[j]) {
          check++;
        }
      }
    }
    if (check == 3) {
      sink.write('Lucky\n');
    } else {
      sink.write('Unlucky\n');
    }
  }
  sink.close();
}