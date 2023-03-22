import 'package:flutter/material.dart';
import 'package:practice02/MyAppBar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Container(
            color: Colors.purple,
            child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.amber,
                      child: Text("Element 1"),
                    ),
                    Container(
                      color: Colors.green,
                      child: Text("Element 2"),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Text("Element 3"),
                    ),
                  ],
                )),
          ),
        ));
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
