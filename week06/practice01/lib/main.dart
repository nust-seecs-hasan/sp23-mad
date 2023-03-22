import 'package:flutter/material.dart';
import 'stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The StopWatch',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 10,
          toolbarTextStyle: TextStyle(
              color: Colors.amber, fontSize: 24, fontFamily: "Comics Sans"),
        ),
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      home: StopWatch(),
    );
  }
}
