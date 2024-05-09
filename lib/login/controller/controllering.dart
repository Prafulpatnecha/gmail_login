import 'package:flutter/material.dart';
import 'package:gmail_login/utils/routes.dart';

class LoginBenner extends StatelessWidget {
  const LoginBenner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Approutes.routes,
    );
  }
}
