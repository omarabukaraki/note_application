import 'package:flutter/material.dart';

import '../constant.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: KprimaryColor),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
      ),
    );
  }
}
