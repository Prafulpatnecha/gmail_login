import 'package:flutter/material.dart';
import 'package:gmail_login/utils/image.dart';

import '../../utils/globle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: loginbeck),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome Back,',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Make it work,make it right,make it fast.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                    border: OutlineInputBorder(),
                    // hoverColor: Colors.green,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: Colors.black,
                  obscureText: boolpass,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: const OutlineInputBorder(),
                    // hoverColor: Colors.green,
                    prefixIcon: const Icon(Icons.fingerprint),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (boolpass == true) {
                            boolpass = false;
                          } else {
                            boolpass = true;
                          }
                        });
                      },
                      child: (boolpass==true)?const Icon(Icons.remove_red_eye):const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 450,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: Colors.black,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'OR',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 60,
                  width: 450,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/google.png'),
                          ),
                        ),
                      ),
                      const Text(
                        'Sign-In with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Don't have an Account? ",style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Signup",style: TextStyle(color: Colors.blue)),
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
