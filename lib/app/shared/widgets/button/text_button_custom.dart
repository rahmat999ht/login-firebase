import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const TextButtonCustom({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }
}
