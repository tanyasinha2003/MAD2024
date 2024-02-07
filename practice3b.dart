bool check({required String str, int l = 5, List<int>? opt}) {
  int length = str.length;
  if (length > l) {
    if (opt == null) {
      return true;
    } else {
      bool optCheck = true;
      for (int i in opt) {
        if (i % 2 != 0) {
          optCheck = false;
          break;
        }
      }
      if (optCheck) {
        return true;
      } else {
        return false;
      }
    }
  }
  return false;
}

void main(){
  List<int> list= [4,6,7];
  print(check(str:"Hellooo",opt:list));
}
