class Coffee {
  // String _temprature;
  String? _temprature;

  void heat() {
    _temprature = "hot";
  }

  void chill() {
    _temprature = "iced";
  }

  String serve() {
    _temprature ??= "";
    return _temprature! + " coffee.";
  }
}

void main() {
  var coffee = Coffee();
  // coffee.heat();
  // print(coffee.serve());
  // coffee.chill();
  print(coffee.serve());
}
