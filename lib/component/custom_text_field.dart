import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {this.onSaved, super.key, this.hintText, this.maxLine = 1});
  final String? hintText;
  final int? maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText ?? 'Title',
          hintStyle: TextStyle(color: kPrimaryColor),
          errorBorder: buildBorder(color: Colors.red),
          focusedErrorBorder: buildBorder(color: Colors.red),
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
