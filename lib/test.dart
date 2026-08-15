// Lesson 1: Variable
// void main() {
//   String name = "Paul";
//   int age = 16;
//   String favoriteFood = "Pasta";
//   bool likeFlutter = true;
//
//   print(name);
//   print(age);
//   print(favoriteFood);
//   print(likeFlutter);
// }

//Lesson 2: Oparators

// void main() {
//   int a = 10;
//   int b = 5;
//
//   print(a + b); // 15
//   print(a - b); // 5
//   print(a * b); // 50
//   // the / always returns a double
//   print(a / b); // 2.0
//   // if you want a whole number use
//   print(a ~/ b); // 2
//
//   // 2. Updating a variable
//   //instead of writing
//   int score = 10;
//
//   score = score + 5;
//   // you can write
//   score += 5;
//   // both mean the same thing
//
//   // 3. Increment and decrement
//   int count = 0;
//   count++;
//   print(count);
//
//   // 4. Comparison operators
//   // these compare two values and return true or false
//   print(10 > 5);  // true
//   print(10 < 5);  // false
//   print(10 == 10);// true
//   print(10 != 10);// false
//
//   //5. Boolean operators
//   bool hasTicket = true;
//   bool hasID = false;
//   // AND (&&) both conditions must be true
//   print(hasTicket && hasID); // false
//   // OR (||) only one condition has to be true
//   print(hasTicket || hasID); // true
//   // NOT (!) // reverses a boolean
//   print(!hasTicket);// false
// }

// Lesson 3: Statements
// void main() {
//   int age = 16;
//   bool hasLicense = false;
//   if (age >= 18 && hasLicense) {
//     print("You can legally drive");
//   } else if (age >= 18) {
//     print("You can drive");
//   } else {
//     print("You cannot legally drive");
//   }
// }

// Lesson 4: Functions
// void sayHello() {
//   print("Hello!");
// }
//
// void greet(String name) {
//   print("Hello $name");
// }
//
// int calculateTotal(int a, int b) {
//   return a + b;
// }
//
// void main() {
//   int result = calculateTotal(10, 20);
//
//   print(result);
// }

// Lesson 5: Lists
// List<String> friends = [
//   "Alex",
//   "Sarah",
//   "John",
// ];
//
// void main() {
//   List<String> games = [
//     "Valorant",
//     "Fortnite",
//     "Mincraft"
//   ];
//   print(games[0]);
//   games.add("Nba2k");
//   print(games.length);
// }

// Lesson 6: Maps
// void main() {
//   Map<String, dynamic> user = {
//     "name": "Paul",
//     "age": 16,
//   };
//
//   print(user["name"]);
//   print(user["age"]);
//
//   user["job"] = "Developer";
//
//   print(user["job"]);
//   user.remove("age");
// }
// void main() {
//   Map<String, dynamic> phone = {
//     "brand": "Apple",
//     "model": "iphone17",
//   };
//
//   phone.forEach((key, value){
//     print("$key : $value");
//   });
// }

//Lesson 7: Set
// void main() {
//   Set<String> languages = {
//     "Dart",
//     "Java",
//     "Python",
//   };
//
//   languages.add("JavaScript");
// }
// void main() {
//   Set<String> colors = {
//     "Red",
//     "Blue",
//     "Green",
//   };
//
//   for(String color in colors) {
//     print(color);
//   }
// }

// Lesson: 8
// void main() {
//   String? username;
//   if (username != null) {
//     print(username);
//   }
// }

void main() {
  String? username;

  print(username ?? "Guest");
}