

Map<String, int Function(int,int)> getMathFunctions(){
  int add(int x, int y){
    return x+y;
  }
  int sub(int x, int y){
    return x-y;
  }
  int mul(int x, int y){
    return x*y;
  }
  int div(int x, int y){
    if(y!=0){return x~/y;}
    else{return 0;}
  }

  return {"add":add,"sub":sub,"mul":mul,"div":div};
}

void main(){
  Map map = getMathFunctions();

  print(map["add"](2,3));
}