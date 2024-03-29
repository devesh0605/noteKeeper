import 'package:flutter/material.dart';
import 'package:note_keeper/screens/note_detail.dart';
import 'package:note_keeper/screens/notelist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Keeper',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
      ),
      home: NoteList(),
    );
  }
}


