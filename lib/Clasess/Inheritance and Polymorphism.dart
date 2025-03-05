// ## 3. Inheritance and Polymorphism
//
// ### Easy
//
// - **Exercise 1:**
// Create a base class `Animal` with a method `makeSound()` that prints “Some generic sound”.
// - Then, create a subclass `Cat` that extends `Animal` and overrides `makeSound()` to print “Meow”.
// - In `main()`, create an instance of `Cat` and call `makeSound()`
class Animal {
  void makeSound() {
    print("Some generic sound");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow");
  }
}

void main() {
  Cat myCat = Cat();
  myCat.makeSound();
}
// ### Medium
//
// - **Exercise 2:**
// Write an abstract class `Vehicle` with an abstract method `move()`.
// - Create two subclasses: `Bicycle` and `Car`. Implement the `move()` method in each to print a message indicating how that vehicle moves (e.g., “Pedaling the bicycle” and “Driving the car”).
// - In `main()`, create instances of both and call their `move()` methods.
abstract class Vehicle {
  void move();
}

class Bicycle extends Vehicle {
  @override
  void move() {
    print("Pedaling the bicycle");
  }
}

class Car extends Vehicle {
  @override
  void move() {
    print("Driving the car");
  }
}

void main() {
  Bicycle myBicycle = Bicycle();
  Car myCar = Car();

  myBicycle.move();
  myCar.move();
}
// ### Hard
//
// - **Exercise 3:**
// Create a class hierarchy for a simple Flutter model:
// - Define a base class `WidgetModel` with a property `id` (int) and a method `render()` that prints “Rendering widget [id]”.
// - Create two subclasses: `TextWidgetModel` (adds a property `text`) and `ImageWidgetModel` (adds a property `imageUrl`), each overriding `render()` to include its specific details.
// - In `main()`, create a list of mixed widget models and iterate through them, calling the `render()` method on each.
//
// *Hint:* This exercise simulates how Flutter might handle different widget types through a common interface.
class WidgetModel {
  int id;

  WidgetModel(this.id);

  void render() {
    print("Rendering widget $id");
  }
}

class TextWidgetModel extends WidgetModel {
  String text;

  TextWidgetModel(int id, this.text) : super(id);

  @override
  void render() {
    print("Rendering TextWidget $id with text: \"$text\"");
  }
}

class ImageWidgetModel extends WidgetModel {
  String imageUrl;

  ImageWidgetModel(int id, this.imageUrl) : super(id);

  @override
  void render() {
    print("Rendering ImageWidget $id with image: $imageUrl");
  }
}

void main() {
  List<WidgetModel> widgets = [
    TextWidgetModel(1, "Hello, Flutter!"),
    ImageWidgetModel(2, "https://example.com/image.png"),
    TextWidgetModel(3, "Another text widget"),
  ];

  for (var widget in widgets) {
    widget.render();
  }
}
