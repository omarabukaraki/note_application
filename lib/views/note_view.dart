import 'package:flutter/material.dart';
import '../component/add_note_page.dart';
import '../component/note_list_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Notes'),
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade800),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
        ],
      ),
      body: const NotesViewBody(),
      floatingActionButton: const CustomFloatingActionButton(),
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
