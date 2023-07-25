import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(color: Colors.greenAccent),
                border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 60, horizontal: 12),
                hintText: 'Content',
                hintStyle: TextStyle(color: Colors.greenAccent),
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
