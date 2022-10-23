import 'package:flutter/material.dart';
import 'package:login_app_with_firebase/controllers/auth_controller.dart';

import 'login_textfield_button.dart';

class SignUpTextfield extends StatelessWidget {
  const SignUpTextfield({
    Key? key,
    required this.w,
  }) : super(key: key);

  final double w;
  @override
  Widget build(BuildContext context) {
    final signUpEmailController = AuthController.instance.email;
    final signUpPasswordController = AuthController.instance.password;
    return Container(
      width: w,
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          LoginTextField(
            keyType: TextInputType.emailAddress,
            hintText: 'Email',
            icon: Icons.email,
            controller: signUpEmailController,
          ),
          const SizedBox(height: 20),
          LoginTextField(
            hide: true,
            keyType: TextInputType.visiblePassword,
            hintText: 'Password',
            icon: Icons.password,
            controller: signUpPasswordController,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
