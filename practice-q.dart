//practice questions

import "dart:io";
import "dart:core";
import 'dart:math';

// PALINDROME
//str.reverse() methods exists
// String reverseString(String input) {
//   String reversed = '';
//   for (int i = input.length - 1; i >= 0; i--) {
//     reversed += input[i];
//   }
//   return reversed;
// }

// void main() {
//   //to check for palindrome i normally reverse the string by a default method
//   print("Enter a string");
//   String input = stdin.readLineSync().toString();
//   if (input.compareTo(reverseString(input)) == 0) {
//     print("palindrome");
//   } else {
//     print("not palindrome");
//   }
// }

//RANDOM NUMBER
// void main() {
//   var random = Random();
//   print(random.runtimeType);
//   //doesnt include 101
//   int num = random.nextInt(101);
//   print("Guess the number");
//   int i = int.parse(stdin.readLineSync().toString());
//   if (i == num) {
//     print("Woah your guess is correct");
//   } else if (i < num) {
//     print("you guess was low");
//   } else if (i > num) {
//     print("your guess is high");
//   }
// }

//FIBONACCI
// void main(){
//   print("Enter a number");
//   int n = int.parse(stdin.readLineSync().toString());
//   int x=0,y=1;
//   if(n== 1){
//     print(x);
//   }
//   if(n>1){
//     print(x);
//     print(y);
//   }
//   for(int i=0;i<n-2;i++){
//     int z=x;
//     x=y;
//     y=x+z;
//     print(y);
//   }
// }

//REMOVE DUPLICATES
// List<int> inputFromUser() {
//   print("Enter a list of numbers with spaces");
//   String input = stdin.readLineSync().toString();
//   List<String> strList = input.split(" ");
//   List<int> intList = <int>[];
//   strList.forEach((element) {
//     intList.add(int.parse(element));
//   });
//   return intList;
// }

// void main() {
//   List<int> list = inputFromUser();
//   Set<int> unique= <int>{};
//   list.forEach((element) {
//     unique.add(element);
//   });
//   print(unique);
// }

// void main() {
//   print("enter a string with multiple words");
//   String input = stdin.readLineSync().toString();
//   input = input.trim();
//   List<String> list = input.split(" ");
//   for (int i = list.length - 1; i >= 0; i--) {
//     stdout.write(list[i] + " ");
//   }
// }

//PRACTICE QUESTIONS PART 2

int reverse(int x) {
  var rev = 0;
  int i = 2;
  while (x > 0) {
    int d = x % 10;
    rev += (d * pow(10, i)).toInt();
    i--;
    double a = x / 10;
    x = a.toInt();
  }
  return rev;
}

void main() {
  List<int> list = [325, 546, 358, 964, 135, 678];
  List<int> rev = [];
  for (int i in list) {
    rev.add(reverse(i));
  }
  print(rev);
}
