class MyClass {
  //These two are private attributes
  int _age = 0;
  String _name = "";

  //This is a public attribute
  String defaultName = "My Default Name!";

  //Default constructor
  MyClass() {
    _age = 0;
    _name = "Anonymous";
  }

  MyClass.copyContructor(MyClass fromMyClass) {
    this._age = fromMyClass._age;
    this._name = fromMyClass._name;
  }

  MyClass.overloadedContructor(String name, int age) {
    this._age = age;
    this._name = name;
  }

  // MyClass.overloadedContructorNamedArguemnts({String name, int age}) {
  //   this._age = age;
  //   this._name = name;
  // }

  //Overriding the toString() method
  String toString() {
    String retVal = "Name:: " + _name + " | " + "Age:: " + _age.toString();
    return retVal;
  }
}

//The execution starts from here..
void main() {
  MyClass myClass1 = new MyClass();
  MyClass()..toString();

  //Cannot access oprivate attributes
  //print(myClass1.name);
  //print(myClass1.age);

  //Can access the public attribute
  print("Default Name:: " + myClass1.defaultName);

  print(myClass1.toString());

  MyClass myClass2 = new MyClass.copyContructor(myClass1);

  print(myClass2.toString());

  MyClass myClass3 = new MyClass.overloadedContructor("Amit", 42);

  print(myClass3.toString());

  MyClass myClass4 =
      new MyClass.overloadedContructorNamedArguemnts(age: 42, name: "Amit");

  print(myClass4.toString());
}
