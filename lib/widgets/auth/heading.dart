import 'package:flutter/material.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Heading_auth extends StatelessWidget {
  final String maintext;
  final String middletext;

  final double fontsize;
  Heading_auth(
      {required this.maintext,
      required this.middletext,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          maintext,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
        Text(
          middletext,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: fontsize,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
