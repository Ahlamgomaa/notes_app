import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor:const Color(0xFF62FCD7),
        title: const Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
      ),
      body:const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: CustomTextField(
            hint:'NoteTitle',
            label: 'Search',
          ),
        ),
      ),
    );
  }
}
