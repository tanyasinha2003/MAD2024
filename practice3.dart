int product(List<int> list, {required int a, int b = 3}) {
  int sum = b;
  for (int i in list) {
    sum += i;
  }
  return a * sum;
}

void main() {
  List<int> list = [5, 10, 20];
  print(product(list, a: 2, b: 4));
}
