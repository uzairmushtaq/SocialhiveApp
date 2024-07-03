import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCommmonContainer extends StatelessWidget {
  const ProfileCommmonContainer(
      {Key? key,
      required this.icon,
      required this.containerColor,
      required this.value,
      required this.type})
      : super(key: key);

  final IconData icon;
  final String value;
  final String type;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(type),
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(value,
                      style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: value == 'not set'
                              ? Colors.black
                              : Colors.red))),
            )),
          ],
        ),
      ),
    );
  }
}
