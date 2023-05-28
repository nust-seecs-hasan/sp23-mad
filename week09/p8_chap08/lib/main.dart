import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:p8_chap08/pizza.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pizzaString = '';

  @override
  void initState() {
    readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza List"),
      ),
      body: Container(
        child: FutureBuilder(
            future: readJsonFile(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Pizza>> _pizzas) {
              return ListView.builder(
                  itemCount: (_pizzas.data == null) ? 0 : _pizzas.data?.length,
                  itemBuilder: (BuildContext context, int position) {
                    return ListTile(
                      title: Text(_pizzas.data![position].pizzaName),
                      subtitle: Text(_pizzas.data![position].description +
                          ' -€ ' +
                          _pizzas.data![position].price.toString()),
                    );
                  });
            }),
      ),
    );
  }

  String convertToJSON(List<Pizza> pizzas) {
    String json = '[';
    pizzas.forEach((pizza) {
      json += jsonEncode(pizza);
    });
    json += ']';
    return json;
  }

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist.json');
    List myMap = jsonDecode(myString);
    List<Pizza> myPizzas = [];
    myMap.forEach((dynamic pizza) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    });

    String json = convertToJSON(myPizzas);
    print(json);

    return myPizzas;
  }
}
