import 'package:flutter/material.dart';
import '../component/add_note_page.dart';
import '../component/custom_app_bar.dart';
import '../component/note_list_view.dart';

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
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
          context: context,
          builder: (context) {
            return const AddNotePage();
          },
        );
      },
      backgroundColor: Colors.grey.shade800,
      child: const Icon(Icons.add),
    );
  }
}
