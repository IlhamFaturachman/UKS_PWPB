import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  final Widget child;
  const BackgroundPage({
    key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 1,
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          child,
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/Ellipse 1.png"),
            width: size.width * 0.2,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Image.asset("assets/images/Ellipse 2.png"),
            width: size.width * 0.2,
          ),
          
        ],
      ),
    );
  }
}