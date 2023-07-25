import 'package:flutter/material.dart';
import 'package:note_app/component/custom_app_bar.dart';
import 'package:note_app/component/custom_text_field.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          text: 'Edit Note',
          icon: Icon(
            Icons.done,
            color: Colors.white,
          )),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: CustomTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: CustomTextField(
            hintText: 'Contact',
            maxLine: 4,
          ),
        )
      ]),
    );
  }
}
