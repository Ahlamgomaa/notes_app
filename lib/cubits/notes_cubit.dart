import 'package:bloc/bloc.dart';


part 'add_notes_state.dart';
class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(NotesInitial());
}
