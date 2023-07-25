import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.hightOfTextFiled});
  final String? hintText;
  final double? hightOfTextFiled;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: hightOfTextFiled ?? 20, horizontal: 12),
          hintText: hintText ?? 'Title',
          hintStyle: TextStyle(color: KprimaryColor),
          enabledBorder: buildBorder(color: Colors.white),
          focusedBorder: buildBorder(color: KprimaryColor)),
    );
  }

  OutlineInputBorder buildBorder({required color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(16));
  }
}
