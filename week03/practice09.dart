main() {
  final rectangle = Rectangle(2, 5);
}

class Rectangle {
  final int width;
  final int height;
  final int area;

  Rectangle(this.width, this.height) : area = width * height {
    print(area);
  }
}
