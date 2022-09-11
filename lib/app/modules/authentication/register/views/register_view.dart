import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
                  child: Form(
                    key: controller.formkey,
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
                          controller: controller.nameCR,
                          keyboardType: TextInputType.text,
                          validator: controller.validEmpty,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldCustom(
                          label: 'Email',
                          hint: 'Your email',
                          controller: controller.emailCR,
                          keyboardType: TextInputType.emailAddress,
                          validator: controller.validEmail,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldCustom(
                          label: 'Contact no.',
                          hint: 'Your contact number',
                          controller: controller.contactCR,
                          keyboardType: TextInputType.phone,
                          validator: controller.validEmpty,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Obx(
                          () => TextFieldCustom(
                            label: 'Password',
                            hint: 'Your password',
                            keyboardType: TextInputType.visiblePassword,
                            controller: controller.passwordCR,
                            obscureText: controller.isObscureOld.value,
                            icon: GestureDetector(
                              onTap: controller.obscure,
                              child: Icon(
                                !controller.isObscureOld.value
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 26,
                                color: Colors.black54,
                              ),
                            ),
                            validator: controller.validPass,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Obx(
                          () => TextFieldCustom(
                            label: 'Comfirm Password',
                            hint: 'Comfirm password',
                            keyboardType: TextInputType.visiblePassword,
                            controller: controller.comfirmPasswordCR,
                            obscureText: controller.isObscureOld.value,
                            icon: GestureDetector(
                              onTap: controller.obscure,
                              child: Icon(
                                !controller.isObscureOld.value
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                size: 26,
                                color: Colors.black54,
                              ),
                            ),
                            validator: controller.validComPass,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ButtonPrimaryCustom(
                          text: 'Singup',
                          onPressed: controller.btnRegis,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
