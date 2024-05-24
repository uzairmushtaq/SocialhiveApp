import 'package:flutter/material.dart';

class Heading_auth extends StatelessWidget {
  final String maintext;
  final String middletext;
  final String endtext;
  final double fontsize;
  Heading_auth(
      {required this.maintext,
      required this.middletext,
      required this.endtext,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          maintext,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
        Text(
          middletext,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
        Text(
          endtext,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
