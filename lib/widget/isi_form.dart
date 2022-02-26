// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:uks_pwpb/constants/color.dart';

class FormIsian extends StatefulWidget {
  const FormIsian(
      {Key? key,
      required this.namalengkapController,
      required this.kelasController,
      required this.nisController,
      required this.noTelpController,
      required this.beratBadanController,
      required this.riwayatPenyakitController})
      : super(key: key);

  final TextEditingController namalengkapController;
  final TextEditingController kelasController;
  final TextEditingController nisController;
  final TextEditingController noTelpController;
  final TextEditingController beratBadanController;
  final TextEditingController riwayatPenyakitController;

  @override
  _FormIsianState createState() => _FormIsianState();
}

class _FormIsianState extends State<FormIsian> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.87,
      color: KfourthColor,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kelas",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NIS",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "No. Telp",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berat Badan",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Riwayat Penyakit",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.68,
                    child: TextFormField(
                      controller: widget.namalengkapController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
