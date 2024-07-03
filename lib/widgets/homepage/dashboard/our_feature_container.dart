import 'package:flutter/material.dart';

class OurFeatureContainer extends StatelessWidget {
  const OurFeatureContainer(
      {Key? key,
      required this.text,
      required this.icon,
      required this.iconColor,
      required this.containerColor})
      : super(key: key);

  final String text;
  final IconData icon;
  final Color iconColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
