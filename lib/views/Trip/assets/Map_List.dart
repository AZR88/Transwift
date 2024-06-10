import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _List();
}

class _List extends State<List> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 40,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _buildRadio(),
          ),
        ),
      ),
    );
  }

  Widget _buildRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        _buildRadioOption(1, "Pergi ke jalan Ahmad Yani"),
        const SizedBox(
          height: 20,
        ),
        _buildRadioOption(2, "Naik Bis Sugeng Rahayu jurusan jember"),
        const SizedBox(
          height: 20,
        ),
        _buildRadioOption(3, "Turun di terminal Tawang alun"),
        const SizedBox(
          height: 20,
        ),
        _buildRadioOption(4, "Pilih angkot jurusan Kampus"),
        const SizedBox(
          height: 20,
        ),
        _buildRadioOption(5, "Turun Di jalan Kalimantan"),
        const SizedBox(
          height: 20,
        ),
        _buildRadioOption(6, "Anda sudah Di tujuan"),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildRadioOption(int value, String label) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue as int;
            });
          },
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
