import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropDownButtonApp extends StatelessWidget {
  final List binaryList;
  final Function? handleDropdown;
  final Function? callbackFunction;
  final dynamic value;
  final dynamic error;

  const DropDownButtonApp(
      {Key? key,
      required this.binaryList,
      required this.callbackFunction,
      required this.value,
      this.error,
      this.handleDropdown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var initialValue = binaryList.first['id'];
    var result = value != null
        ? binaryList.where((el) => el['id'] == value).first['id']
        : initialValue;

    return DropdownButton(
      style: const TextStyle(color: Colors.deepPurple),
      value: result,
      isExpanded: true,
      elevation: 16,
      underline: Container(height: 2),
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
