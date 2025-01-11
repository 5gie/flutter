import 'package:flutter/material.dart';

class HomeController {

  Future<void> logout(BuildContext context) async {
    Navigator.pushReplacementNamed(context, '/login');
  }
}
