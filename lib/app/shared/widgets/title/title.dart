import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCustom extends StatelessWidget {
  final String title;
  const TitleCustom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.almendra(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
