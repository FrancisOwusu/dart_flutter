
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
void main() async {
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
if (kDebugMode) {
try {
FirebaseFirestore.instance.useFirestoreEmulator('localhost',
8080);
} catch (e) {
// ignore: avoid_print
print(e);
}
}
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Firebase Firestore Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const MyHomePage(title: 'Flutter Firestore Database: Write'),
);
}
}
class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key, required this.title}) : super(key:
key);
final String title;
@override
State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
final _nameController = TextEditingController();
final _locationController = TextEditingController();
@override
Widget build(BuildContext context) => Scaffold(
appBar: AppBar(
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our AppBar title.
title: Text(widget.title),
),
body: ListView(
padding: const EdgeInsets.all(20),
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
children: <Widget>[
TextField(
decoration: const InputDecoration(
labelText: 'Team Name',
border: OutlineInputBorder(),
),
controller: _nameController,
),
const SizedBox(height: 20.0),
TextField(
decoration: const InputDecoration(
labelText: 'Team Location',
border: OutlineInputBorder(),
),
controller: _locationController),
const SizedBox(height: 20.0),
ElevatedButton(
onPressed: () {
createTeam(
name: _nameController.text.trim(),
location: _locationController.text.trim());
},
child: const Text('Add'))
],
),
);
Future createTeam({required String name, required String
location}) async {
// Write to the Cloud Firestore database
final docTeam = FirebaseFirestore.instance.collection('teams').doc();
final teamJSON = {
'name': name,
'location': location,
};
// Create the document and write data
await docTeam.set(teamJSON);
// Add: import 'package:flutter/foundation.dart';
// Production Debug statement
if (kDebugMode) {
print("Database Write!");
}
}
}