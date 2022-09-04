import 'package:flutter/material.dart';

class CardIconCustom extends StatelessWidget {
  final String icon;
  final void Function() onTap;
  const CardIconCustom({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(15),
      color: Colors.white,
      elevation: 5,
      shadowColor: Colors.black26,
      surfaceTintColor: Colors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 50,
          width: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
