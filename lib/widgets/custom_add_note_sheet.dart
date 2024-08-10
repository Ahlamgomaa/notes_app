import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              label: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              label: 'Content',
              maxlines: 5,
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

