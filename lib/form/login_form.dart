import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/my_colors.dart';
import 'package:flutter_application_3/form/input/email_input.dart';
import 'package:flutter_application_3/form/input/password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: const EmailInput(
            hintText: 'Email or Username',
            prefixIcon: Icons.person,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: const PasswordInput(
            hintText: 'Password',
            prefixIcon: Icons.lock,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forget Password?',
              style: TextStyle(
                color: MyColors.purpleColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.purpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
