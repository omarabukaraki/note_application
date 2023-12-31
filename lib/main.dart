import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/add_note_observer.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/note_view.dart';

import 'constant.dart';
import 'cubits/read_notes_cubit/read_notes_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocobserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: MaterialApp(
        title: 'note',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            fontFamily: 'Poppins'),
        home: const NoteView(),
      ),
    );
  }
}
