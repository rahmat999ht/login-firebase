import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_firebase/app/modules/authentication/register/controllers/register_controller.dart';

class OnCamera extends GetView<RegisterController> {
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
