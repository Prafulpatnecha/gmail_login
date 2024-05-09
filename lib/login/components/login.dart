import 'package:flutter/material.dart';
import 'package:gmail_login/utils/image.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: loginbeck
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('Welocome Back,',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text('Make it work,make it right,make it fast.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,height: -3),),
              ),
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'E-Mail',
                  border: OutlineInputBorder(),
                  // hoverColor: Colors.green,
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
