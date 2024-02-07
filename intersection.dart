import "dart:io";
import "dart:core";

void intersection(Set<int> setOne, Set<int> setTwo) {
  Set<int> common = {};
  for (int i in setTwo) {
    if (setOne.contains(i)) {
      common.add(i);
    }
  }
  print(common);
}

void main() {
  Set<int> setOne = {};
  print("Enter number of elements in set-1");
  int n = int.parse(stdin.readLineSync().toString());
  for (int i = 0; i < n; i++) {
    setOne.add(int.parse(stdin.readLineSync().toString()));
  }
  Set<int> setTwo = {};
  print("Enter number of elements in set-2");
  int m = int.parse(stdin.readLineSync().toString());
  for (int i = 0; i < m; i++) {
    setTwo.add(int.parse(stdin.readLineSync().toString()));
  }
  intersection(setOne, setTwo);
}
