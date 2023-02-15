import 'package:flutter/material.dart';
import 'BinaryWidget.dart';

const List<String> list = <String>['a', 'b', 'c', 'd'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  // const Home({super.key});

  @override
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Binary Converter')),
        body: const BinaryWidget());
  }
}
