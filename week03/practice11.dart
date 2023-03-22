class Student {
  int age = 0;
  Student(this.age) {}
}

class Point {
  int? x;
  int? y;
  int area = 0;

  Point();

  Point.defaultConstructor() {
    x = 0;
    y = 0;
  }
  Point.withArea() : area = this.x * this.y ;{}

  Point.atZero() : this.defaultConstructor();

  Point.atXaxis() {
    y = 0;
  }
  Point.atYaxis() {
    y = 0;
  }
}

void main() {
  Point p1 = new Point.atXaxis();
}
