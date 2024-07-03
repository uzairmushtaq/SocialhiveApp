import 'package:flutter/material.dart';

class InfoGradientContainer extends StatelessWidget {
  const InfoGradientContainer(
      {super.key,
      required this.ttile,
      required this.clr,
      required this.overlaycolor,
      required this.Lineargradientcolor,
      required this.onPressed});

  final String ttile;
  final List<Color> clr;
  final Color overlaycolor;
  final bool Lineargradientcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Card(
          elevation: 50,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                    begin: Lineargradientcolor
                        ? Alignment.topCenter
                        : Alignment.centerLeft,
                    end: Lineargradientcolor
                        ? Alignment.bottomCenter
                        : Alignment.centerRight,
                    colors: clr)),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(0)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(overlaycolor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent)),
                onPressed: onPressed,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ttile,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
        ));
  }
}
