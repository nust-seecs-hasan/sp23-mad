void main() {
  int a = 7;
  int b = 8;
  // print(sum0(a, b));
  // print(sum1(a, b));
  print(sum2(a, b, 5, 6));
  // print(sum3(a, b, c: 9, d: 8));
}

int sum0(int a, int b) => a + b;
int sum1(int a, int b) {
  return a + b;
}

int sum2(int a, int b, [int? c, int? d]) {
  int sum = 0;
  sum = a + b;
  if (c != null && d != null) {
    return sum + c + d;
  }
  return sum;
}

int sum3(int a, int b, {int c = 10, int d = 10}) {
  if (c > 0 && d > 0) {
    return a + b + c + d;
  }
  return a + b;
}
