import "dart:io";
import "dart:core";
import 'dart:math';

void checkSubset(Set<int> superSet,Set<int> subSet){
  if(superSet.containsAll(subSet))
  return print("set2 is a subset of set1");
  else
  return print("set2 is not a subset of set1");

}

void main(){
  Set<int> setOne={};
  print("Enter number of elements in set-1");
  int n = int.parse(stdin.readLineSync().toString());
  for(int i=0;i<n;i++){
    setOne.add(int.parse(stdin.readLineSync().toString()));
  }
  Set<int> setTwo={};
  print("Enter number of elements in set-2");
  int m = int.parse(stdin.readLineSync().toString());
  for(int i=0;i<m;i++){
    setTwo.add(int.parse(stdin.readLineSync().toString()));
  }
  checkSubset(setOne,setTwo);

}