// ignore: file_names
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:uks_pwpb/constants/color.dart';
import 'package:uks_pwpb/pages/form_isi.dart';
import 'package:uks_pwpb/pages/home.dart';

class FormBody extends StatefulWidget {
  FormBody({
    key,
    required this.emailcontroller,
    required this.passwordcontroller,
  }) : super(key: key);

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  _FormBodyState createState() => _FormBodyState();
}

final _formKey = GlobalKey<FormState>();

class _FormBodyState extends State<FormBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.01),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.09, right: size.width * 0.35),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: KthirdColor,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Container(
                      width: size.width * 0.6,
                      height: size.height * 0.075,
                      child: TextFormField(
                        controller: widget.emailcontroller,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(CupertinoIcons.person),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Masukkan Email"),
                          EmailValidator(errorText: "Email tidak valid"),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.1, right: size.width * 0.35),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: KthirdColor,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 13,
                    ),
                    width: size.width * 0.6,
                    height: size.height * 0.075,
                    child: TextFormField(
                      controller: widget.passwordcontroller,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        prefixIcon: Icon(CupertinoIcons.lock),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Password"),
                        MinLengthValidator(6,
                            errorText:
                                "Kata sandi harus setidaknya 6 karakter"),
                      ]),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.04, left: size.width * 0.27),
            child: GestureDetector(
              child: Container(
                child: Text(
                  "Lupa Password ??",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: KprimaryColor),
                ),
              ),
              onTap: () {
                print("bapak");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.08, bottom: size.height * 0.1),
            child: Center(
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: KthirdColor,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => FormIsi(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: KsecondaryColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
