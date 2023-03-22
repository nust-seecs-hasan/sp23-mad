Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'vanilla shot');
}

Future<String> entertainUser() {
  return Future.delayed(
      Duration(seconds: 4), () => 'Still waiting, why not smile a little...');
}

void main() async {
  print(await entertainUser());
  var order = getOrder();
  print("Getting order...");
  print(await order);
}
