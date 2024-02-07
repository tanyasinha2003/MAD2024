import 'dart:io';

void main() {
  //single quote and double quotes are treated as strings only there are no character data types
  print('blah');

  int x = 100;
  //string interpolation '$x'
  print("hi i am x $x");
  print("the value of x is ${x + 2}");
  //just like javascript we can evaluate expressions by using the $ sign

  //without the ? we get a compile time error- the variable is not initialised
  //? means that the null values are accepted
  int? val;
  print(val);

  String address = """ 

        The Northcap university 
        Gurugram 
        Haryana

  """;

  print(address);
  var a = 3.4;

  print(a.runtimeType);

  //var and dynamic variables are the same, the data type is defined at runtime
  //using dynamic we can changet the data type of a variable
  dynamic c;

  c = 8;
  print(c.runtimeType);

  c = "hey";

  print(c.runtimeType);
  print("enter your name");
  String? name = stdin.readLineSync();
  print(name);

  print("enter your age");
  String? input = stdin.readLineSync();
  int age = int.parse(input.toString());
  print(age);

  print(printhello());

  print(printSum(3, 3));
}

//we havent specified the returned type therefore it will be decided at runtime
//the return type will be dynamic
// by defualt if the method doesnt return anything then the method returns null
//use dynamic keyword instead of leaving the return type blank
dynamic printhello(){
  print("hello");
}

//two ways to declare functions
int printSum(int x,int y){
  return (x + y);
}

int getSum(int x,int y) => (x+y);

