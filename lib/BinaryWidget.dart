import 'package:binary_converter/dropdown_button.dart';
import 'package:flutter/material.dart';

const List<dynamic> list = <dynamic>[
  {'id': 0, 'name': 'a'},
  {'id': 1, 'name': 'b'},
  {'id': 2, 'name': 'c'},
  {'id': 3, 'name': 'd'},
];

void main() => runApp(const BinaryWidget());

class BinaryWidget extends StatefulWidget {
  const BinaryWidget({super.key});

  @override
  State<BinaryWidget> createState() => _BinaryState();
}

class _BinaryState extends State<BinaryWidget> {
  var firstDropdownVal;
  var secondDropdownVal;

  final leftSection = Expanded(
      flex: 1,
      child: Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 6, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('From'),
              DropDownButtonApp(
                  binaryList: list,
                  callbackFunction: (test) {
                    print(test);
                  })
            ],
          )));

  final rightSection = Expanded(
      child: Container(
          padding: const EdgeInsets.fromLTRB(6, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('From'),
              DropDownButtonApp(
                  binaryList: list, callbackFunction: (test) => {print(test)})
            ],
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

  var firstPicker = 0;
  var secondPicker = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[leftSection, rightSection],
        ),
        textFieldSection
      ],
    );
  }
}
