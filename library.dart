import "dart:io";
import "dart:core";
 
 Map<String, String> books = {};
void bookStore(){
 print("1.Add books\n2.Checkout books\n3.View status of a book\nEnter Choice");
  int choice = int.parse(stdin.readLineSync().toString());
  switch (choice) {
    case 1:
    print("Enter book name");
    String bookName = stdin.readLineSync().toString();
    books[bookName] = "in";
    print("book added to the library");
    print(books);
    break;
    case 2:
    books.forEach((key, value) {
      if(value == "in")
      print(key);
    });
    print("Enter book name to checkout");
    String checkoutBook = stdin.readLineSync().toString();
    books[checkoutBook] = "out";
    print("$checkoutBook checked out from the library");
    break;
    case 3:
    print("Enter book name to view status");
    String checkStatusBook = stdin.readLineSync().toString();
    books.forEach((key, value) {
      if(key == checkStatusBook)
      print("Status: $value");
    });
    break;
    default:
    print("wrong choice");
  }
}


void main() {
  String exit;
  print("Welcome to the library");
  do{
    bookStore();
    print("Do you want to exit the library?");
      exit = stdin.readLineSync().toString();
  }while(exit=="no");

}