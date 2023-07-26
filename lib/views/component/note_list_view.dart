import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_page.dart';

import 'note_component.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return NoteComponent(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const EditNotePage();
              },
            ));
          },
        );
      },
    );
  }
}
