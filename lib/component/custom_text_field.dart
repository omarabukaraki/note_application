import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLine = 1});
  final String? hintText;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(
          //     vertical: hightOfTextFiled ?? 20, horizontal: 12),
          hintText: hintText ?? 'Title',
          hintStyle: TextStyle(color: kPrimaryColor),
          enabledBorder: buildBorder(color: Colors.white),
          focusedBorder: buildBorder(color: kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder({required color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(16));
  }
}
