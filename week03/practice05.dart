// Function that replicates an error
Future<void> getOrder() {
  return Future.delayed(
      Duration(seconds: 2), () => throw Exception('Some Error'));
}

void main() {
  getOrder();
  print("Getting order...");
}
