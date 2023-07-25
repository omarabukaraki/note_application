import 'package:flutter/material.dart';

class NoteDetailsPage extends StatelessWidget {
  const NoteDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Edit Note'),
          actions: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey.shade800),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.done))),
          ],
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(color: Colors.greenAccent),
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 60, horizontal: 12),
                    hintText: 'Content',
                    hintStyle: TextStyle(color: Colors.greenAccent),
                    border: OutlineInputBorder()),
              ),
            )
          ],
        ));
  }
}
