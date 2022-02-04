// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormIsi extends StatefulWidget {
  const FormIsi({Key? key}) : super(key: key);

  @override
  _FormIsiState createState() => _FormIsiState();
}

class _FormIsiState extends State<FormIsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: "Home"
        ),
      ]),
    );
  }
}
