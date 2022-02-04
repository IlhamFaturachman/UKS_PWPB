// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FormIsi extends StatefulWidget {
  const FormIsi({Key? key}) : super(key: key);

  @override
  _FormIsiState createState() => _FormIsiState();
}

class _FormIsiState extends State<FormIsi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.5,
                    width: size.width * 0.65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Form Isi.png"),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
