import 'package:flutter/material.dart';
import 'widgets/DropdownButtonApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  // const Home({super.key});

  final leftSection = new Expanded(
      flex: 1,
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('From'), DropdownButtonApp()],
          )));

  final rightSection = new Expanded(
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('To'), DropdownButtonApp()],
          )));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binary Converter')),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[leftSection, rightSection],
        ),
      ),
    );
  }
}
