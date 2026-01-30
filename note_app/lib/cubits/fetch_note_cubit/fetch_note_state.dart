part of 'fetch_note_cubit.dart';

abstract class FetchNoteState {}

class FetchNoteInitial extends FetchNoteState {}

// class FetchNoteLoading extends FetchNoteState {}

class FetchNoteSuccess extends FetchNoteState {
  //this way in case we deal with list on time in widet tree
  //but in case i will use it in more than one widget i access it by cubit
  // final List<NoteModel> notes;
  // FetchNoteSuccess({required this.notes});
}

// class FetchNoteFailure extends FetchNoteState {
//   final String errorMessage;
//   FetchNoteFailure(this.errorMessage);
// }
