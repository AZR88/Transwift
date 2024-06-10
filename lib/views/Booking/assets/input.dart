import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(), // Adds an underline
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0), // Set the height
            ),
          )
        ],
      ),
    );
  }
}
