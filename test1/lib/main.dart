import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Heros List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  //variables
  String herosString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Super Heros')),
        body: Container(
          child: FutureBuilder(
              future: readJsonFile(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<SuperHeros>> heros) {
                return ListView.builder(
                    itemCount: (heros.data == null) ? 0 : heros.data?.length,
                    itemBuilder: (BuildContext context, int position) {
                      return ListTile(title: Text(heros.data?.first as String));
                    });
              }),
        ));
  }

  Future<List<SuperHeros>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/herosList.json');
    List myMap = jsonDecode(myString);

    List<SuperHeros> myHeros = [];
    myMap.forEach((dynamic hero) {
      SuperHeros myHero = hero.Hero.fromJsonMap(hero);
      myHeros.add(myHero);
    });
    return myHeros;
    // setState(() {
    //   herosString = myString;
    // });
  }

  @override
  void initState() {
    readJsonFile();
    super.initState();
  }
}

class SuperHeros {
  int? id;
  String? name;
  String? code;
  String? power;

  SuperHeros({this.id, this.name, this.code, this.power});

  SuperHeros.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    power = json['power'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['power'] = this.power;
    return data;
  }
}
