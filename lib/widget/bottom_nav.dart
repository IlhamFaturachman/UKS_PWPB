// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uks_pwpb/pages/data_diri.dart';
import 'package:uks_pwpb/pages/form_isi.dart';
import 'package:uks_pwpb/pages/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screens = [
    FormIsi(),
    Home(),
    DataDiri(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fileAlt), label: "Isi Form"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.server), label: "Data"),
        ],
      ),
    );
  }
}
