//3. Write a Dart function named filterList that takes a list of integers and a closure function as arguments. 
//The closure function should determine whether an integer should be included in the filtered list. The filterList 
//function should return a new list containing only the integers that satisfy the condition specified by the closure function.

void main() {
  List<int> list=[2,3,4,5];
  print(filterList(list,filter()));
}

List  filterList(List<int> list, Function closure){
  List<int> filteredList=[];
  for(int i in list){
    if(closure(i))filteredList.add(i);
  }

  return filteredList;
}

Function filter(){
  bool checkEven(int i){
    if(i%2==0)return true;
    return false;
  }

  return checkEven;
}
