import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'fetch_note_state.dart';

class FetchNoteCubit extends Cubit<FetchNoteState> {
  FetchNoteCubit() : super(FetchNoteInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    final notesBox = Hive.box<NoteModel>(Constant.KNotesBox);
    notes = notesBox.values.toList();
    emit(FetchNoteSuccess());
  }
}
//notesBox.values =>return itratable values