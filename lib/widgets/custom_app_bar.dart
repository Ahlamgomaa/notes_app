import 'package:flutter/material.dart';
import 'package:notes_app/views/search_view.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              // fontFamily: 'Edu Australia VIC WA NT Hand',
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SearchView();
            }));
          },
          child: CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ),
      ],
    );
  }
}
