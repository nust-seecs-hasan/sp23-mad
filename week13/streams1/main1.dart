import 'dart:math';

Stream<double> getRandomValues() async* {
  double start = 2.0;
  double end = 3.99;

  while (true) {
    await Future.delayed(Duration(seconds: 1));
    double random = new Random().nextDouble();
    yield start + (random * (end - start));
  }
}

void main() {
  var stream = getRandomValues();
  stream.listen((value) => print('1st: $value'));
}
