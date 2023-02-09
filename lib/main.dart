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

  final leftSection = Expanded(
      flex: 1,
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('From'), DropdownButtonApp()],
          )));

  final rightSection = Expanded(
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('To'), DropdownButtonApp()],
          )));
  final textFieldSection = Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter binary number',
                  ),
                )
              ])));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binary Converter')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[leftSection, rightSection],
          ),
          textFieldSection
        ],
      ),
    );
  }
}
