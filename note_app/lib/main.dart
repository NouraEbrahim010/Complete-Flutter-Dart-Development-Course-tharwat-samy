import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/note_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  //initialize hive
  await Hive.initFlutter();
  //register the adapter for store NoteModelAdapter
  //here we decleare to hive that we will use NoteModelAdapter to store NoteModel objects
  Hive.registerAdapter(NoteModelAdapter());
  //open a box
  await Hive.openBox<NoteModel>(Constant.KNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    //here we put FetchNoteCubit() in material because more than on widget use it
    // bloc must be exist above used widget so context can reach it
    return BlocProvider(
      create: (context) => FetchNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
