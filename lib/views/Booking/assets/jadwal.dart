import 'package:flutter/material.dart';

class Jadwal extends StatelessWidget {
  const Jadwal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text("00.00"),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.arrow_forward_rounded,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Text("00.00"),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
