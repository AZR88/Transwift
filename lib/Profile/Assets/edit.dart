import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  final String label;
  final IconData icon;

  Edit({required this.label, required this.icon});

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      labelText: widget.label,
                      prefixIcon: Icon(
                        widget.icon,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.blue,
                  size: 30,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(_focusNode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}