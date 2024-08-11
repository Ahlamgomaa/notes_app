import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_fom.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNotesFailure) {
            print('try again ${state.errorMassage}');
          }
        },
        builder: (context, state) {
          return Builder(builder: (context) {
            return  AbsorbPointer(
              absorbing: state is AddNotesLoading?true :false,
              child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20),
                child:  SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
