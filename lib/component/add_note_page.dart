import 'package:flutter/material.dart';

import 'custom_add_note_button.dart';
import 'custom_text_field.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 8),
          child: CustomTextField(),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: CustomTextField(
              hightOfTextFiled: 60,
              hintText: 'Content',
            )),
        CustomAddNoteButton(
          onTap: () {},
        )
      ],
    );
  }
}
