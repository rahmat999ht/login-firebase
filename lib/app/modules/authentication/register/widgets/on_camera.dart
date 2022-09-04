import 'package:flutter/material.dart';

class OnCamera extends StatelessWidget {
  final void Function() onCamera;
  const OnCamera({
    Key? key,
    required this.onCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCamera,
      focusColor: Colors.black26,
      radius: 30,
      child: const Icon(
        Icons.photo_camera_front_outlined,
        size: 60,
      ),
    );
  }
}
