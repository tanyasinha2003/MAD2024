class BankAccount {
  double balance;
  

  BankAccount(this.balance);

  void deposit(double amount) {
    if(amount < 0) {
      throw BankException(balance, amount, "negative amount can't be deposited in BankAccount");
    }
    balance += amount;
    print("amount deposited");
  }

  void withdraw(double amount) {
    if(amount>balance) {
      throw BankException(balance, amount, "you can't withdraw more than your balance in BankAccount");
    }
    balance -= amount;
    print("amount withdrawn");
  }

}

class BankException implements Exception {
  double current_balance;
  double amount;
  String message;

  BankException(this.current_balance, this.amount, this.message);

  @override
  String toString() => 'InvalidAgeException(current balance: $current_balance,amount: $amount, message: $message)';

}

void main(){
  try
 { BankAccount b= BankAccount(1000.50);
  b.withdraw(2000);
  b.deposit(-1);
  }
  catch(e,st){
    print(e);
    print(st);}
}




