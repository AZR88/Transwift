import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String _selectedItem = 'Kereta Api'; // Default selected item

  final List<String> _dropdownItems = [
    'Kereta Api',
    'Bis',
    'Pesawat'
  ]; // List of dropdown items

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(40),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedItem,
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue!;
              });
            },
            style: const TextStyle(
              color: Colors.black,
            ),
            items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(value),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
