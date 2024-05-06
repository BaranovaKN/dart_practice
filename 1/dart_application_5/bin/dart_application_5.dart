import 'dart:io';

void main() {
  stdout.write("введите текст: ");
  String userText = stdin.readLineSync()!;
  int wordCount = 1;
  for (var i = 0; i < userText.length; i++) {
    if(userText[i] == " ")
    {
      wordCount++;
    }
  }
  userText = 'Start $userText End';
  print(userText);
  if(wordCount>0)
  {
    print('количество слов: $wordCount');
  }
}