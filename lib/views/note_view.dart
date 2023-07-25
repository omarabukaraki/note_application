import 'package:flutter/material.dart';
import 'package:note_app/views/note_details_view.dart';

import '../component/note_component.dart';

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
      body: ListView(
        children: [
          NoteComponent(
            color: Colors.orange.shade300,
          ),
          NoteComponent(
            color: Colors.amber.shade200,
          ),
          NoteComponent(),
          NoteComponent(
            color: Colors.pink.shade200,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return NoteDetailsPage();
            },
          );
        },
        backgroundColor: Colors.grey.shade800,
        child: const Icon(Icons.add),
      ),
    );
  }
}
