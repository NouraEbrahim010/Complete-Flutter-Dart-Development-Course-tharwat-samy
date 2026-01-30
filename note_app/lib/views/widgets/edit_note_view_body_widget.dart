import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custum_app_bar.dart';
import 'package:note_app/views/widgets/custum_text_field.dart';
import 'package:note_app/views/widgets/edit_color_list_viw.dart';

//util we make varibles widget must be StatefulWidget until they finals
class EditNoteViewBodyWidget extends StatefulWidget {
  const EditNoteViewBodyWidget({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBodyWidget> createState() => _EditNoteViewBodyWidgetState();
}

class _EditNoteViewBodyWidgetState extends State<EditNoteViewBodyWidget> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          CustumAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<FetchNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Note Edited successfully',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 32.0),
          CustumTextField(
            hintText: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16.0),
          CustumTextField(
            hintText: widget.noteModel.content,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 16.0),
          EditNotesColorsList(noteModel: widget.noteModel),
        ],
      ),
    );
  }
}

//onSaved work only with form validate
