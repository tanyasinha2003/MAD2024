void main() {
  print(generateFibonacciFunction()(6));
}

Function generateFibonacciFunction() {
  int fibonacci(int n) {
    int x = 0, y = 1;
    if (n == 0) return 0;
    if (n == 1) return 1;
    for (int i = 2; i < n; i++) {
      int z = x;
      x = y;
      y = z + x;
    }
    return y;
  }
  
  return fibonacci;
}
