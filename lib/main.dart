import 'package:clone_gojek/views/layout/layout.view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[300], primarySwatch: Colors.green),
      home: Layout(),
    );
  }
}
