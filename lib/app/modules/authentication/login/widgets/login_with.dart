import 'package:flutter/material.dart';

import '../../../../shared/widgets/card/card_icon_custom.dart';

class LoginWith extends StatelessWidget {
  final void Function() loginEmail;
  final void Function() loginFB;
  const LoginWith({
    Key? key,
    required this.loginEmail,
    required this.loginFB,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Text(
              ' Or login with',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1.5,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CardIconCustom(
              icon: 'assets/icons/email.png',
              onTap: loginEmail,
            ),
            const SizedBox(
              width: 20,
            ),
            CardIconCustom(
              icon: 'assets/icons/fb.png',
              onTap: loginFB,
            ),
          ],
        ),
      ],
    );
  }
}
