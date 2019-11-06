import 'package:flutter/material.dart';
import 'package:uts/screen/note_list.dart';
import 'package:uts/screen/note_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contec',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: NoteList(),
    );
  }
}