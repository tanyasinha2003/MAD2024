
import "dart:io";
import "dart:core";
import 'dart:math';

int genChoice(){
  var random =Random();
  return random.nextInt(3);
}
void main(){
  print("Enter choice rock, paper or scissors");
  String input = stdin.readLineSync().toString();
  Map<String,int> map = {"rock":0, "paper":1,"scissors":2};
  int? userChoice= map[input];
  int computerInput = genChoice();
   var key = map.keys.firstWhere((k) => map[k] == computerInput);
   print("computers choice: $key");
  if(userChoice==computerInput) return print("its a draw");
  switch(computerInput){
    case 0:
    if(userChoice==1) return print("User won");
    else if(userChoice==2) return print("Computer won");
    break;
    case 1:
    if(userChoice==0) return print("Computer won");
    else if(userChoice==2) return print("User won");
    break;
    case 2:
    if(userChoice==1) return print("Computer won");
    else if(userChoice==0) return print("User won");
    break;
  }
}