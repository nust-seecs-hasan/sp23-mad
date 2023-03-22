import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Image.asset('batman.jpg'),
              ),
            ),
            // Expanded(
            //   child:
            // Container(
            //   color: Colors.amber,
            //   width: 300,
            //   height: 200,
            // ),
            // // ),
            Expanded(
              flex: 1,
              child: Container(
                child: Image.asset('gotham.jpg'),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
