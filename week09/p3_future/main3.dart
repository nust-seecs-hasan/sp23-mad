// Future to run
import 'dart:math';

void main(List<String> args) {
  runMultipleFutures();
}

// Running multiple futures
Future runMultipleFutures() async {
  List<Future> futures = [];
  for (int i = 0; i < 5; i++) {
    futures.add(myFutureAsType(i, Random(i).nextInt(5)));
  }
  await Future.wait(futures as Iterable<Future>);
  print('All the futures has completed');
}

Future myFutureAsType(int id, int duration) async {
  await Future.delayed(Duration(seconds: duration));
  print('Delay complete for Future $id after $duration seconds');
  return true;
}
