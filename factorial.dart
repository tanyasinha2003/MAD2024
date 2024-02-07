
void main(){
  Function factorial=factorialFunction(6);
  print(factorial(3));
}


Function factorialFunction(int n){
  int getFactorial(int x){
    if(x<n)
    return 1;
    return x*getFactorial(x-1);
  }

  return getFactorial;
}