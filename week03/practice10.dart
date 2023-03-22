Future<String> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  print(await fetchUserOrder());
  print('Fetching user order...');
}
