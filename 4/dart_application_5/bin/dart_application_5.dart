import 'dart:io';
import 'dart:math';

void main() {
  int xMax = 3;
  int xmin = -1;
  int yMax = 4;
  int yMin = -2;
  int randX =-2 + Random().nextInt(5 - (-2));
  int randY = -4 + Random().nextInt(6 - (-4));
  print(randX);
  print(randY);
  if(randX<=xMax||randX>=xmin && randY<=yMax || randY>=yMin){
    print('object');
  }
}