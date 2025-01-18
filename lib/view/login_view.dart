import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/my_colors.dart';
import 'package:flutter_application_3/utils/my_images.dart';
import 'package:flutter_application_3/view/register_view.dart';
import 'package:flutter_application_3/form/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.whiteColor,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 62),
                Image.asset(
                  MyImages.logo,
                  width: 129,
                  height: 129,
                ),
                const SizedBox(height: 62),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: MyColors.purpleColor,
                    ),
                  ),
                ),
                const LoginForm(),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      color: MyColors.blackColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: MyColors.purpleColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const RegisterView(),
                              ),
                            );
                          },
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
