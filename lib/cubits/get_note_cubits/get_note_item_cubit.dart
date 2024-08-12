import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'get_note_item_state.dart';

class GetNoteItemCubit extends Cubit<GetNoteItemState> {
  GetNoteItemCubit() : super(GetNoteItemInitial());
}
