import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  @override
  State createState() => StopWatchState();
}

class StopWatchState extends State<StopWatch> {
  // bool isTicking = true;
  late int seconds;
  late List<int> laps = [
    0,
  ];
  late Timer timer;
  @override
  void initState() {
    super.initState();
    seconds = 0;
    // timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    // isTicking = false;
  }

  void _onTick(Timer time) {
    setState(() {
      ++seconds;
    });
  }

  void _resetTimer() {
    setState(() {
      seconds = 0;
      // isTicking = true;
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    setState(() {
      // seconds = 0;
      // isTicking = true;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      // isTicking = false;
    });
  }

  void _recordLap() {
    laps.add(seconds);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stopwatch'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$seconds ${_secondsText()}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _recordLap, child: const Text("Lap")),
                TextButton(
                    onPressed: _resetTimer, child: const Text("Reset Timer")),
                TextButton(
                    onPressed: _stopTimer,
                    // isTicking ? _stopTimer : null,
                    child: const Text("Stop Timer")),
                TextButton(
                    onPressed: _startTimer,
                    // isTicking ? null : _startTimer,
                    child: const Text("Start Timer")),
              ],
            ),
            Text(
              '$laps',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ));
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
