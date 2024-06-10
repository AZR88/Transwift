import 'package:flutter/material.dart';
import 'package:transwift/views/Booking/ticket.dart';

class ButtonDone extends StatelessWidget {
  const ButtonDone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Ticket()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(4, 140, 239, 1),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          textStyle: const TextStyle(fontSize: 16),
          minimumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Text(
          'Done',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(4, 140, 239, 1),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          textStyle: const TextStyle(fontSize: 16),
          minimumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButton> {
  String _selectedValue = ''; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Radio<String>(
            value: '1',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          const Text('My Balance'),
        ]),
        const SizedBox(width: 10.0),
        Row(children: [
          Radio<String>(
            value: '2',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          const Text('Credit Card'),
        ]),
        const SizedBox(width: 10.0),
        Row(children: [
          Radio<String>(
            value: '3',
            groupValue: _selectedValue,
            onChanged: (value) => setState(() => _selectedValue = value!),
          ),
          const Text('Debit Card '),
        ]),
      ],
    );
  }
}
