import 'package:flutter/material.dart';
import 'widget/add_note_buttom_sheet.dart';
import 'widget/custom_app_bar.dart';
import 'widget/note_list_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: NotesViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
      backgroundColor: Colors.grey.shade800,
      child: const Icon(Icons.add),
    );
  }
}
