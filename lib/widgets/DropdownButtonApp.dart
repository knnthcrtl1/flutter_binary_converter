import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() => runApp(const DropdownButtonApp(
      binaryList: [],
    ));

class DropdownButtonApp extends StatefulWidget {
  final List binaryList;
  const DropdownButtonApp({super.key, required this.binaryList});

  @override
  State<DropdownButtonApp> createState() => _DropdownButtonAppState();
}

class _DropdownButtonAppState extends State<DropdownButtonApp> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.binaryList.first;
  }

  @override
  Widget build(BuildContext context) {
    List binaryList = widget.binaryList.isNotEmpty ? widget.binaryList : [];

    return DropdownButton<String>(
      value: dropdownValue,
      // icon: const Icon(Icons.down_arrow),
      isExpanded: true,
      elevation: 16,
      // style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: binaryList.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
