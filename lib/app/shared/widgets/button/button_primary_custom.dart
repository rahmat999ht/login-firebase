import 'package:flutter/material.dart';

class ButtonPrimaryCustom extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ButtonPrimaryCustom({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.black87,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          );
        }),
        fixedSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width, 50),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
