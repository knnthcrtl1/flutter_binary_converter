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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binary Converter')),
      body: Container(
        child: Column(children: [
          DropdownButtonApp(),
          // Container(
          //   // color: Colors.red,
          //   // width: MediaQuery.of(context).size.width * 0.50,
          //   child: (Row(
          //     children: const [
          //       Text('From'),
          //       DropdownButtonApp(),
          //       // Container(
          //       //     // padding: const EdgeInsets.all(16),
          //       //     // width: MediaQuery.of(context).size.width * 0.50,
          //       //     // color: Colors.yellow,
          //       //     child: (Column(
          //       //   children: <Widget>[
          //       //     // Text('From'),
          //       //     Container(
          //       //       child: DropdownButtonApp(),
          //       //     )
          //       //   ],
          //       // ))),
          //       // // Column(
          //       // //   children: [Text('To'), DropdownButtonApp()],
          //       // // )
          //     ],
          //   )),
          // ),
        ]),
      ),
    );
  }
}
