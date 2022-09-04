import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_firebase/app/shared/widgets/stack/stack.dart';
import '../../../../shared/widgets/button/button_primary_custom.dart';
import '../../../../shared/widgets/form/text_field_custom.dart';
import '../../../../shared/widgets/title/title.dart';
import '../controllers/register_controller.dart';
import '../widgets/back_to_login.dart';
import '../widgets/on_camera.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackCustom(
        contens: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleCustom(
                  title: 'Sign-up',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OnCamera(
                        onCamera: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        label: 'Name',
                        hint: 'Your name',
                        controller: controller.name,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldCustom(
                        label: 'Email',
                        hint: 'Your email',
                        controller: controller.email,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldCustom(
                        label: 'Contact no.',
                        hint: 'Your contact number',
                        controller: controller.contact,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldCustom(
                        label: 'Password',
                        hint: 'Your password',
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: controller.password,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonPrimaryCustom(
                        text: 'Singup',
                        onPressed: () {
                          Get.back(); // signup and to login
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BackToLogin(
                        onTap: () {
                          Get.back();
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
