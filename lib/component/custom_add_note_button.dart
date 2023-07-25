import 'package:flutter/material.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue.shade200),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
    );
  }
}
