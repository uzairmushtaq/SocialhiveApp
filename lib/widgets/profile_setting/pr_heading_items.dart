import 'package:flutter/material.dart';

class PrHeadingContainer extends StatelessWidget {
  const PrHeadingContainer({
    super.key,
    required this.value,
    this.secondarywidget,
  });
  final String value;
  final Widget? secondarywidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      width: double.infinity,
      color: Colors.transparent,
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(value),
          secondarywidget ?? Icon(Icons.arrow_circle_right),
        ]),
      ),
    );
  }
}
