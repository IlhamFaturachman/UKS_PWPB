// ignore: file_names
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:uks_pwpb/constants/color.dart';
import 'package:uks_pwpb/widget/bottom_nav.dart';

class FormDaftar extends StatefulWidget {
  FormDaftar({
    key,
    required this.usernameDaftarcontroller,
    required this.emailDaftarcontroller,
    required this.passwordDaftarcontroller,
  }) : super(key: key);

  final TextEditingController usernameDaftarcontroller;
  final TextEditingController emailDaftarcontroller;
  final TextEditingController passwordDaftarcontroller;

  @override
  _FormDaftarState createState() => _FormDaftarState();
}

final _formKey = GlobalKey<FormState>();

class _FormDaftarState extends State<FormDaftar> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.09, right: size.width * 0.35),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: KfifthColor,
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
                        controller: widget.usernameDaftarcontroller,
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
                          RequiredValidator(errorText: "Masukkan Username"),
                          MinLengthValidator(8, errorText: "Username Minimal 8 karakter")
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.04, right: size.width * 0.35),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: KfifthColor,
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
                        controller: widget.emailDaftarcontroller,
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
                        top: size.height * 0.04, right: size.width * 0.35),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: KfifthColor,
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
                      controller: widget.passwordDaftarcontroller,
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
            padding: EdgeInsets.only(top: size.height * 0.08),
            child: Center(
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: KfifthColor,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => BottomNav(),
                      ),
                    );
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: KthirdColor,
                      fontFamily: 'Roboto',
                    ),
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
