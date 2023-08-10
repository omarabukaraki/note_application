import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_page.dart';

import 'note_component.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        // BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
        List<NoteModel> notes =
            BlocProvider.of<ReadNotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteComponent(
              noteModel: notes[index],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return EditNotePage(note: notes[index]);
                  },
                ));
              },
            );
          },
        );
      },
    );
  }
}
