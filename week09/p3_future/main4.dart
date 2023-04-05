void main(List<String> args) {
  // runMultipleFutures();
  runTimeout();
}

Future runTimeout() async {
  await myFutureAsType(0, 1).timeout(Duration(seconds: 2), onTimeout: () {
    print('Process timed out, try again');
    return false;
  });
}

Future myFutureAsType(int id, int duration) async {
  await Future.delayed(Duration(seconds: duration));
  print('Delay complete for Future $id');
  return true;
}
