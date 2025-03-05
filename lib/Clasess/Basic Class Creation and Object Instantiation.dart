// ### Easy
//
// - **Exercise 1:**
// Create a simple class called `Car` with two properties: `brand` (String) and `year` (int).
// - Write a constructor that initializes these properties.
// - In the `main()` function, create an instance of `Car` with sample values and print the car’s details (brand and year).
//
// *Hint:* Use a basic constructor with positional parameters
class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void greet() {
    print("Hello, my name is $name and I'm $age years old.");
  }
}

void main() {

  Person person = Person("Alice", 30);

  person.greet();
}
// ### Medium
//
// - **Exercise 2:**
// Write a class `User` with the following fields: `username` (String) and `email` (String).
// - Add a method `displayInfo()` that prints “User [username] can be reached at [email]”.
// - Create an instance of `User` in `main()` and call `displayInfo()`.
//
//
class User {
  String username;
  String email;

  User(this.username, this.email);

  void displayInfo() {
    print("User $username can be reached at $email");
  }
}

void main() {
  User user = User("Alice", "alice@example.com");
  user.displayInfo();
}

// ### Hard
//
// - **Exercise 3:**
// Design a class `Book` with properties: `title` (String), `author` (String), and `price` (double).
// - Include a named constructor `Book.discounted` that initializes a book with a discounted price.
// - In `main()`, create two instances of `Book` (one using the default constructor and one using the named constructor) and print their details.
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  Book.discounted(this.title, this.author, double originalPrice, double discount)
      : price = originalPrice - (originalPrice * discount / 100);

  void display() {
    print("Book: $title by $author costs \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  Book regularBook = Book("Flutter Guide", "John Doe", 20.0);
  Book discountedBook = Book.discounted("Dart Essentials", "Jane Smith", 30.0, 10);

  regularBook.display();
  discountedBook.display();
}
