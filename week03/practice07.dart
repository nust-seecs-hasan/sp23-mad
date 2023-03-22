// this constructor examples
class Person {
  int? age;
  String? name;
  Person(this.age, this.name);

  Person.newBorn() {
    age = 0;
    name = "MothersName";
  }
  Person.foriegnNational() {}

  Person.newBornForiegnNational() : this.newBorn();
}

void main() {
  Person p1 = new Person(10, "hasan");
}
