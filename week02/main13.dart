class Person {
  Person() {}
  pName() {
    print("Hasan");
  }

  pDetails() {
    print("MAD");
  }
}

main() {
  new Person()
    ..pName()
    ..pDetails();
}
