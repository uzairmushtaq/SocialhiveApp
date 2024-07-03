import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Commonlisttile extends StatelessWidget {
  const Commonlisttile({
    super.key,
    required this.heading,
    required this.icons1,
  });

  final String heading;
  final IconData icons1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(
            children: [
              Icon(
                icons1,
                color: AppColors.secondaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  heading,
                  style: GoogleFonts.pompiere(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
