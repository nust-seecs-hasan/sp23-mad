import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _howAreYou = "...";
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => _openHomePage(
                    context: context,
                    fullscreenDiaglog: true,
                  )),
          IconButton(
              icon: const Icon(Icons.info),
              onPressed: () => _openAboutPage(
                    context: context,
                    fullscreenDiaglog: true,
                  )),
        ],
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(16.0)
      child: Text("Grateful for: $_howAreYou"),style: TextStyle(fontSize: 24.0),),)))
      floatingActionButton: FloatingActionButton(
        onPressed: _openPageGratitude(context: context),
        tooltip: 'About',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
  }
void _openAboutPage({BuildContext context, bool fullscreenDialog = false}){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutPage()));
}
void _openHomePage({BuildContext context, bool fullscreenDialog = false}){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
}
}
