void main() {
  int a = 1;
  print(func3(a, c: 4));
}

int func1(int a, int b) {
  return a + b;
}

int func2(int a, int b) => a + b;

dynamic func3(int a, [dynamic b, dynamic c]) {
  return a + b + c;
}

dynamic func4(int a, {dynamic b, int c}) {
  return a + b + c;
}
