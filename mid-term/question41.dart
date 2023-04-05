void main(List<String> args) {
  question4_5();
  question4_6();
}

// void question4_1() {
//   final v1 = 12;
//   const v2 = 13;
//   v2 = 12; //Constant variables can't be assigned a value.
//   //Try removing the assignment, or remove the modifier 'const' from the variable
// }

// void question4_2() {
//   List<String> logTypes = new List<String>();
//   logTypes.add(1);
//   logTypes.add("ERROR");
//   logTypes.add("INFO");
//   for (String type in logTypes) {
//     print(type);
//   }
// }

// //void question4_3() {
// abstract class NumberAdder {
//   num add(num a, num b);
// }

// class MyAdder extends NumberAdder {
//   @override
//   num add(int a, int b) => a + b;
// }
// //}

// void question4_4() {
//   var map = {'a': 1, 'b': 2, 'c': 3};
//   map['d'] = 1.5;
// }

void question4_5() {
  var a = null;
  var b = 12;
  var res = a ?? b;
  print(res);
}

void question4_6() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Durian'];
  fruits.removeAt(1);
  print(fruits);
}
