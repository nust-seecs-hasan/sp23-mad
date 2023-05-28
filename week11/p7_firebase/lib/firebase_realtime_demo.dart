import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'Record.dart';

class FirebaseRealtimeDemoScreen extends StatelessWidget {
  final databaseReference = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    readData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Realtime Database Demo'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              child: Text('Create Data'),
              onPressed: () {
                createData();
              },
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              child: Text('Read/View Data'),
              onPressed: () {
                readData();
              },
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              child: Text('Update Data'),
              onPressed: () {
                updateData();
              },
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              child: Text('Delete Data'),
              onPressed: () {
                deleteData();
              },
            ),
          ],
        ),
      )), //center
    );
  }

  void saveRecord(Record record) {
    databaseReference.push().set(record.toJson());
  }

  Query getRecordQuery() {
    return databaseReference;
  }

  void createData() {
    databaseReference
        .child("flutterDevsTeam1")
        .set({'name': 'Hasan', 'description': 'Team Lead'});
    databaseReference
        .child("flutterDevsTeam2")
        .set({'name': 'Ayesha', 'description': 'Senior Software Engineer'});
    databaseReference
        .child("flutterDevsTeam3")
        .set({'name': 'Ali', 'description': 'Software Engineer'});
    databaseReference
        .child("flutterDevsTeam4")
        .set({'name': 'Ahmad', 'description': 'Software Engineer'});
    databaseReference
        .child("flutterDevsTeam5")
        .set({'name': 'Shariq', 'description': 'Associate Software Engineer'});
    databaseReference
        .child("flutterDevsTeam6")
        .set({'name': 'Mohsin', 'description': 'Associate Software Engineer'});
    databaseReference
        .child("flutterDevsTeam7")
        .set({'name': 'Nadia', 'description': 'Associate Software Engineer'});
  }

  void readData() {
    databaseReference.once().then((DataSnapshot snapshot) {
          print('Data : ${snapshot.value}');
        } as FutureOr Function(DatabaseEvent value));
  }

  void updateData() {
    databaseReference.child('flutterDevsTeam1').update({'description': 'CEO'});
    databaseReference
        .child('flutterDevsTeam2')
        .update({'description': 'Team Lead'});
    databaseReference
        .child('flutterDevsTeam3')
        .update({'description': 'Senior Software Engineer'});
  }

  void deleteData() {
    databaseReference.child('flutterDevsTeam1').remove();
    databaseReference.child('flutterDevsTeam2').remove();
    databaseReference.child('flutterDevsTeam3').remove();
  }
}
