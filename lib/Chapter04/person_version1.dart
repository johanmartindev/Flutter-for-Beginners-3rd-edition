class Person {
  String? firstName;
  String? lastName;

  String get fullName => "$firstName $lastName";
  set fullName(String fullName) {
    var parts = fullName.split(" ");
    firstName = parts.first;
    lastName = parts.last;
  }
}

main() {
  Person somePerson = Person();
  somePerson.firstName = "Clark";
  somePerson.lastName = "Kent";

  print(somePerson.fullName); // prints Clark Kent
  somePerson.fullName = "peter parker";
}
