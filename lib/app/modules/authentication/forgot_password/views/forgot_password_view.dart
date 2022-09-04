import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login_firebase/app/shared/widgets/stack/stack.dart';

import '../../../../shared/widgets/button/button_primary_custom.dart';
import '../../../../shared/widgets/button/text_button_custom.dart';
import '../../../../shared/widgets/form/text_field_custom.dart';
import '../../../../shared/widgets/title/title.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackCustom(
        contens: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleCustom(
                  title: 'Forgot password',
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFieldCustom(
                        label: 'Email',
                        hint: 'Your email',
                        controller: controller.email,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ButtonPrimaryCustom(
                        text: 'Submit',
                        onPressed: () {
                          Get.back(); //submit ke login
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButtonCustom(
                        text: 'Back to login',
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
