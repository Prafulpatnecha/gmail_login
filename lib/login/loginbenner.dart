import 'package:flutter/material.dart';
import 'package:gmail_login/utils/image.dart';

import '../utils/colors.dart';

class Loginhome extends StatefulWidget {
  const Loginhome({super.key});

  @override
  State<Loginhome> createState() => _LoginhomeState();
}

class _LoginhomeState extends State<Loginhome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: beckcolor,
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: loginbeck),
              ),
            ),
            const Spacer(),
            const Text(
              'Build Awesome Apps',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Let's put your creative on the",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'development highway.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: loginButton(boolck: true),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'SIGNUP',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
Widget loginButton({required bool boolck}) {
  return Container(
    height: 45,
    width: 130,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: (boolck==true)?const Color(0xff0FFE401):Colors.black,
    ),
    alignment: Alignment.center,
    child: Text(
      'LOGIN',
      style: TextStyle(color: (boolck==true)?Colors.black:Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
    ),
  );
}