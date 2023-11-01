import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  HomeAppText({Key? key,
    this.size=15,
    required this.text,
    required this.color,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
