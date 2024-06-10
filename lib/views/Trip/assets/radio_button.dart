import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  String _selectedOption = '';

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: const Text('Best Route'),
            leading: Radio<String>(
              value: 'Option 1',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: const Text('Fewer Transfer'),
            leading: Radio<String>(
              value: 'Option 2',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: const Text('Less Walking'),
            leading: Radio<String>(
              value: 'Option 3',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: const Text('Wheelchair accessible'),
            leading: Radio<String>(
              value: 'Option 4',
              groupValue: _selectedOption,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ),
      ],
    );
  }
}
