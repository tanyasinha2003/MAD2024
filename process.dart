void main() {
  List<int> list = [2, 3, 4, 5];
  print(processNumbers(list, mapper(), filter()));
}

List processNumbers(List<int> list, Function mapper, Function filter) {
  List<int> filteredList = [];
  for (int i in list) {
    int j=mapper(i);
    if (filter(j)) filteredList.add(j);
  }

  return filteredList;
}

Function filter() {
  bool checkEven(int i) {
    if (i % 2 == 0) return true;
    return false;
  }

  return checkEven;
}

Function mapper() {
  int mulThree(int i) {
    return i * 3;
  }

  return mulThree;
}
