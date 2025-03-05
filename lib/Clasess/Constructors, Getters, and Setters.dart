// ### Easy
//
// - **Exercise 1:**
// Create a class `Rectangle` with two properties: `width` and `height` (both doubles).
// - Write a constructor to initialize these values.
// - Add a getter called `area` that returns the product of width and height.
// - In `main()`, create a `Rectangle` instance and print its area.
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
}

void main() {
  Rectangle rect = Rectangle(5.0, 10.0);
  print("Area of the rectangle: ${rect.area}");
}
// ### Medium
//
// - **Exercise 2:**
// Write a class `Temperature` that has a private field `_celsius` (double).
// - Create a constructor that sets `_celsius`.
// - Define a getter `fahrenheit` that converts the Celsius value to Fahrenheit using the formula: `fahrenheit = _celsius * 9/5 + 32`.
// - In `main()`, create a `Temperature` instance and print both Celsius and Fahrenheit values.
class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get fahrenheit => _celsius * 9 / 5 + 32;

  void display() {
    print("Celsius: $_celsius°C, Fahrenheit: ${fahrenheit}°F");
  }
}

void main() {
  Temperature temp = Temperature(25.0);
  temp.display();
}
// ### Hard
//
// - **Exercise 3:**
// Implement a class `BankAccount` with a private field `_balance` (double).
// - Provide a constructor to initialize the balance.
// - Write methods for `deposit(double amount)` and `withdraw(double amount)` (only allow withdrawal if there are sufficient funds).
// - Also, include a getter `balance` to return the current balance.
// - In `main()`, simulate a few transactions and print the account balance after each operatio
class BankAccount {
  double _balance;

  BankAccount(this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds or invalid withdrawal amount.");
    }
  }

  double get balance => _balance;

  void displayBalance() {
    print("Current Balance: \$${_balance.toStringAsFixed(2)}");
  }
}

void main() {
  BankAccount account = BankAccount(100.0);

  account.displayBalance();
  account.deposit(50.0);
  account.displayBalance();
  account.withdraw(30.0);
  account.displayBalance();
  account.withdraw(150.0);
  account.displayBalance();
}
