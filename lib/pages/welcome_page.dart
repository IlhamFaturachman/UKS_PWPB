// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:uks_pwpb/constants/color.dart';
import 'package:uks_pwpb/pages/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.1, top: size.height * 0.1),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Halo!!",
                                style: TextStyle(
                                    color: KsecondaryColor,
                                    fontSize: size.height * 0.06),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Selamat Datang",
                                style: TextStyle(
                                    color: KsecondaryColor,
                                    fontSize: size.height * 0.06),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Pengguna Baru",
                                style: TextStyle(
                                    color: KsecondaryColor,
                                    fontSize: size.height * 0.06),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.1, left: size.width * 0.75),
                      child: Container(
                        width: 58,
                        height: 25,
                        color: KsecondaryColor,
                        child: Center(
                          child: Text(
                            "New",
                            style: TextStyle(
                              color: Color(0xff85887D),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/flash.png"),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "APLIKASI DATA KESEHATAN SISWA",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: KsecondaryColor,
                              fontSize: 20,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: size.width * 0.07, top: size.height * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Text(
                              "Menganalisa, Mendata,",
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Mengontrol Data Kesehatan Siswa",
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1, bottom: size.height * 0.1),
                      child: Center(
                        child: Container(
                          width: size.width * 0.3,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: KsecondaryColor,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => Login(),
                                ),
                              );
                            },
                            child: Text("Get Started"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
