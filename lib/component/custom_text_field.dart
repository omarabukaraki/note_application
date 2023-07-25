import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.hightOfTextFiled});
  final String? hintText;
  final double? hightOfTextFiled;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: hightOfTextFiled ?? 20, horizontal: 12),
          hintText: hintText ?? 'Title',
          hintStyle: TextStyle(color: Colors.blue.shade200),
          border: const OutlineInputBorder()),
    );
  }
}
