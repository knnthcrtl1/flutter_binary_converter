import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropDownButtonApp extends StatelessWidget {
  final List binaryList;
  final Function? handleDropdown;
  final Function? callbackFunction;

  const DropDownButtonApp(
      {Key? key,
      required this.binaryList,
      required this.callbackFunction,
      this.handleDropdown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: binaryList.first?['id'],
      // icon: const Icon(Icons.down_arrow),
      // style: const TextStyle(color: Colors.deepPurple),
      isExpanded: true,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (value) => callbackFunction!(value),
      items: binaryList.map((value) {
        return DropdownMenuItem(
          value: value['id'],
          child: Text(value['name']),
        );
      }).toList(),
    );
  }
}
