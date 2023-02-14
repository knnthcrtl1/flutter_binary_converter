import 'package:flutter/material.dart';
import 'widgets/DropdownButtonApp.dart';

const List<String> list = <String>['a', 'b', 'c', 'd'];

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
          padding: const EdgeInsets.fromLTRB(16, 16, 6, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text('From'), DropdownButtonApp(binaryList: list)],
          )));

  final rightSection = Expanded(
      child: Container(
          padding: const EdgeInsets.fromLTRB(6, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text('To'), DropdownButtonApp(binaryList: list)],
          )));
  final textFieldSection = Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter binary number',
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                    // width: double.infinity,
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Reset',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
                const SizedBox(height: 12),
                const Text('Output'),
                const SizedBox(height: 6),
                const TextField(
                  readOnly: true,
                  enabled: false,
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Output',
                  ),
                ),
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
