import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/my_colors.dart';
import 'package:flutter_application_3/form/input/text_input.dart';
import 'package:flutter_application_3/form/input/email_input.dart';
import 'package:flutter_application_3/form/input/password_input.dart';


class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInput(
          hintText: 'Full Name',
          prefixIcon: Icons.person,
        ),
        const SizedBox(height: 20),
        const EmailInput(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        const SizedBox(height: 20),
        const PasswordInput(
          hintText: 'Password',
          prefixIcon: Icons.lock,
        ),
        const SizedBox(height: 20),
        const PasswordInput(
          hintText: 'Confirm Password',
          prefixIcon: Icons.lock,
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.purpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Sign Up',
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
