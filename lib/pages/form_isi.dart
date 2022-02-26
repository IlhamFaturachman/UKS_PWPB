// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uks_pwpb/constants/color.dart';
import 'package:uks_pwpb/widget/isi_form.dart';

class FormIsi extends StatefulWidget {
  const FormIsi({Key? key}) : super(key: key);

  @override
  _FormIsiState createState() => _FormIsiState();
}

class _FormIsiState extends State<FormIsi> {

  final TextEditingController namalengkapController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController nisController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController beratBadanController = TextEditingController();
  final TextEditingController riwayatPenyakitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Form Isi.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.1, left: size.width * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Silahkan",
                            style: TextStyle(
                              color: KprimaryColor,
                              fontSize: 23,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Isi Form",
                            style: TextStyle(
                              color: KprimaryColor,
                              fontSize: 23,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Dengan Benar",
                            style: TextStyle(
                              color: KprimaryColor,
                              fontSize: 23,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: FormIsian(
                namalengkapController: namalengkapController,
                kelasController: kelasController,
                nisController: nisController,
                noTelpController: noTelpController,
                beratBadanController: beratBadanController,
                riwayatPenyakitController: riwayatPenyakitController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
