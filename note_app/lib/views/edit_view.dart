// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_view_body_widget.dart';

class EditView extends StatelessWidget {
  const EditView({Key? key, required this.noteModel}) : super(key: key);

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBodyWidget(noteModel: noteModel));
  }
}
