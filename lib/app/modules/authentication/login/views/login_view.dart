import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared/widgets/button/button_primary_custom.dart';
import '../../../../shared/widgets/button/text_button_custom.dart';
import '../../../../shared/widgets/form/text_field_custom.dart';
import '../../../../shared/widgets/stack/stack.dart';
import '../../../../shared/widgets/title/title.dart';
import '../controllers/login_controller.dart';
import '../widgets/login_with.dart';
import '../widgets/sing_up.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  title: 'Log-in',
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFieldCustom(
                        label: 'Email',
                        hint: 'Your email',
                        controller: controller.emailCL,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldCustom(
                        label: 'Password',
                        hint: 'Your password',
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: controller.passwordCL,
                        obscureText: controller.isObscureOld.value,
                        icon: GestureDetector(
                          onTap: () {
                            controller.isObscureOld.value =
                                !controller.isObscureOld.value;
                          },
                          child: Icon(
                            !controller.isObscureOld.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 26,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      TextButtonCustom(
                        text: 'Forgot password?',
                        onPressed: () {
                          Get.toNamed(Routes.FORGOT_PASSWORD);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtonPrimaryCustom(
                        text: 'Login',
                        onPressed: () {
                          controller.auth.login(
                            controller.emailCL.text,
                            controller.passwordCL.text,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    SingUp(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    LoginWith(
                      loginEmail: () {},
                      loginFB: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
