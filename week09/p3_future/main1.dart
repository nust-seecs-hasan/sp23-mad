main() async {
  var cost = await getProductCostForUser();
  print(cost);
  print("The data is being recieved");
}

Future getProductCostForUser() async {
  var user = await getUser();
  var order = await getOrder();
  var product = await getProduct();
  print(product);
  return 100;
}

Future getUser() async {
  Future.delayed(
    const Duration(seconds: 1),
    () => 100,
  ).then((value) {
    print('User Details recieved'); // Prints later, after 3 seconds.
  });
}

Future getOrder() async {
  Future.delayed(
    const Duration(seconds: 4),
    () => 100,
  ).then((value) {
    print('User Order Details recieved'); // Prints later, after 3 seconds.
  });
}

Future getProduct() async {
  Future.delayed(
    const Duration(seconds: 1),
    () => 100,
  ).then((value) {
    print('User Order - Product Details recieved');
    return "Product"; // Prints later, after 3 seconds.
  });
}
