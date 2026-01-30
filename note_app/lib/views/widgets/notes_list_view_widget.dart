//list view take it space based on its children size
//expanded widget it function is tp take all the available space
//expanded widget must be used inside column or row or flex
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/notes_container_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNoteCubit, FetchNoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<FetchNoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NotesContainerWidget(noteModel: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
