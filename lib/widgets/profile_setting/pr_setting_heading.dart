import 'package:flutter/material.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class PrSettingHeading extends StatelessWidget {
  const PrSettingHeading({super.key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Profile Setting",
              style: TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
