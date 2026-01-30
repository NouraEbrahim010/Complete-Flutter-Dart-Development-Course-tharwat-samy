import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_list_view.dart';
import 'package:note_app/views/widgets/custum_button_widget.dart';
import 'package:note_app/views/widgets/custum_text_field.dart';

class AddedNoteForm extends StatefulWidget {
  const AddedNoteForm({super.key});

  @override
  State<AddedNoteForm> createState() => _AddedNoteFormState();
}

class _AddedNoteFormState extends State<AddedNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  //use to show validation error in case wrong input or empty input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustumTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16.0),
          CustumTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 32.0),
          const ColorsListView(),
          const SizedBox(height: 32.0),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustumButtonWidget(
                isloading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  //validate input fields first
                  if (_formKey.currentState!.validate()) {
                    //save form fields
                    _formKey.currentState!.save();
                    //formate date
                    var currentDate = DateTime.now();
                    var formattedDate = DateFormat(
                      'EEE, MMM yyyy',
                    ).format(currentDate);
                    //trigger add note event
                    var noteModel = NoteModel(
                      title: title!,
                      content: content!,
                      date: formattedDate,
                      color: Color(0xff42858C).value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
