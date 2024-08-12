part of 'get_note_item_cubit.dart';

@immutable
sealed class GetNoteItemState {}

final class GetNoteItemInitial extends GetNoteItemState {}

final class GetNoteLoaded extends GetNoteItemState {
  final NoteModel noteModel;

  GetNoteLoaded(this.noteModel);
}

final class GetNoteSucess extends GetNoteItemState {}

final class GetNoteFailure extends GetNoteItemState {
  final String errMessage;

  GetNoteFailure(this.errMessage);
}
