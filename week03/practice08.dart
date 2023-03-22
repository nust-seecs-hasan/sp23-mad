class Square extends Shape {
  String toString() {
    return 'You are a square';
  }
}

class Rectangle extends Shape {
  String toString() {
    return 'You are a rectangle';
  }
}

class Shape {
  Shape();
  factory Shape.fromTypeID(int id) {
    if (id == 1) {
      return Rectangle();
    }
    if (id == 2) {
      return Square();
    }
    throw ArgumentError('Unknown Type $id');
  }

  factory Shape.fromTypeName(String shapeType) {
    if (shapeType == "rectangle") {
      return Rectangle();
    }
    if (shapeType == "square") {
      return Square();
    }
    throw ArgumentError('Unknown Type $shapeType');
  }
}

main() {
  Shape s1 = new Shape.fromTypeName('square');
  print(s1.toString());
}
