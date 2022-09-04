import 'package:flutter/material.dart';

class StackCustom extends StatelessWidget {
  final Widget contens;
  const StackCustom({
    super.key,
    required this.contens,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Image.asset(
          'assets/images/bg.jpeg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          height: 550,
          width: MediaQuery.of(context).size.width,
          child: contens,
        ),
      ],
    );
  }
}
