class Person {
  String name;
  String classTitle;
  Person(String givenName, String givenClass) {
    name = givenName;
    classTitle = givenClass;
  }
  void toString() {
    print("Hello" + name + ", Welcome to " + classTitle);
  }

  void printName() {
    print("Hello There");
  }

  void printClass() {
    print("Welcome to MAD");
  }
}

void main() {
  new Person()
    ..printName()
    ..printClass();

  Person p1 = new Person("Hasan", "MAD");
}
