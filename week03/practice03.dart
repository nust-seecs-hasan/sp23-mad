// Function that replicates a slow operation
Future<void> getOrder() {
  return Future.delayed(
      Duration(seconds: 2), () => print("Vanilla Shot Served."));
}

Future<void> entertainUser() {
  return Future.delayed(
      Duration(seconds: 1), () => print("The order will be here anytime soon"));
  ;
}

void main() {
  getOrder();
  //Notice how the following appears on screen first
  print("Getting order...");
  entertainUser();
}
