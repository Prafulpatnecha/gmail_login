// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gmail_login/login/loginbenner.dart';

import '../login/components/login.dart';
class Approutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/': (context)=> const Loginhome(),
    '/login':(context)=> const LoginPage(),
  };
}