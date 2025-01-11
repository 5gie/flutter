import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/my_colors.dart';
import 'package:flutter_application_3/utils/my_images.dart';
import 'package:flutter_application_3/view/register_view.dart';

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
                  margin: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: MyColors.purpleColor)
                    ),
                  ),
                ),
                const LoginForm(),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: MyColors.blackColor, fontSize: 16),
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
                                builder: (context) => const RegisterView(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 30.0),
          child: const PasswordInput()
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30.0),
          child: const EmailOrUsernameInput()
        )
      ],
    );
  }
}

class EmailOrUsernameInput extends StatelessWidget {
  const EmailOrUsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email or Username',
        prefixIcon: const Icon(Icons.person), 
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), 
          borderSide:  BorderSide(
            color: MyColors.purpleColor, 
            width: 2, 
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: MyColors.purpleColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: MyColors.purpleColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});
  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText, 
      decoration: InputDecoration(
        hintText: 'Password',
        prefixIcon: const Icon(Icons.lock), 
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), 
          borderSide: BorderSide(
            color: MyColors.purpleColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: MyColors.purpleColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: MyColors.purpleColor, 
            width: 2,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ), 
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText; 
            });
          },
        ),
      ),
    );
  }
}
