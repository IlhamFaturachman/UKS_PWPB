// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:uks_pwpb/constants/color.dart';
import 'package:uks_pwpb/widget/background_page.dart';
import 'package:uks_pwpb/widget/form_body.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundPage(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.17),
              child: Center(
                child: Container(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: KprimaryColor, fontSize: 40),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width * 1,
                height: size.height * 0.32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/login.png"),
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: KsecondaryColor,
              ),
              child: Column(
                children: [
                  Container(
                      child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      FormBody(
                          emailcontroller: emailcontroller,
                          passwordcontroller: passwordcontroller)
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
