// ## 4. Encapsulation and Data Protection
//
// ### Easy
//
// - **Exercise 1:**
// Write a class `Secret` with a private field `_code` (String).
// - Provide a constructor to set the `_code`.
// - Write a method `reveal()` that returns the code only if a parameter `password` matches a hardcoded value; otherwise, return “Access Denied”.
// - Test this in `main()`.
//
class Secret {
  String _code;

  Secret(this._code);

  String reveal(String password) {
    return password == "1234" ? _code : "Access Denied";
  }
}

void main() {
  Secret mySecret = Secret("FlutterRocks");

  print(mySecret.reveal("1234")); // Output: FlutterRocks
  print(mySecret.reveal("wrongPass")); // Output: Access Denied
}
// ### Medium
//
// - **Exercise 2:**
// Create a class `UserProfile` with private fields `_name` (String) and `_age` (int).
// - Provide public getters for both fields.
// - Also, provide a setter for `_age` that only allows updating if the new age is greater than the current age (simulate user growing older).
// - In `main()`, create a `UserProfile` and attempt to update the age in different scenarios.
class UserProfile {
  String _name;
  int _age;

  UserProfile(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set age(int newAge) {
    if (newAge > _age) {
      _age = newAge;
    } else {
      print("New age must be greater than the current age.");
    }
  }
}

void main() {
  UserProfile user = UserProfile("Alice", 25);

  print("Name: ${user.name}, Age: ${user.age}");

  user.age = 30; // Valid update
  print("Updated Age: ${user.age}");

  user.age = 20; // Invalid update
  print("Final Age: ${user.age}");
}

// ### Hard
//
// - **Exercise 3:**
// Design a class `Configuration` that holds private settings in a map (e.g., keys as Strings and values as dynamic).
// - Provide methods to safely update and retrieve settings.
// - Ensure that direct modification of the settings map from outside the class is not possible.
// - In `main()`, create an instance of `Configuration`, update several settings, and print the final configuration in a formatted manner
class Configuration {
  final Map<String, dynamic> _settings = {};

  void setSetting(String key, dynamic value) {
    _settings[key] = value;
  }

  dynamic getSetting(String key) {
    return _settings.containsKey(key) ? _settings[key] : "Setting not found";
  }

  void printSettings() {
    print("Configuration Settings:");
    _settings.forEach((key, value) {
      print("$key: $value");
    });
  }
}

void main() {
  Configuration config = Configuration();

  config.setSetting("theme", "dark");
  config.setSetting("volume", 75);
  config.setSetting("notifications", true);

  print("Theme: ${config.getSetting("theme")}");
  print("Volume: ${config.getSetting("volume")}");
  print("Invalid key test: ${config.getSetting("nonexistent")}");

  config.printSettings();
}
