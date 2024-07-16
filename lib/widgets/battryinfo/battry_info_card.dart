import 'package:flutter/material.dart';

class Two_value_card extends StatelessWidget {
  const Two_value_card({
    super.key,
    required this.textmain,
    required this.value,
    this.subwidget,
    this.clr,
    this.clr1,
  });
  final String textmain;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? clr1;
  //  final String textmain;
  // final String value;
  // final Widget? subwidget;
  // final Color? clr;
  // final Color? clr1;]


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      width: double.infinity,
      child: Card(
        color: clr ?? Colors.white,
        elevation: 30,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textmain,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 7),
                subwidget ??
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 13,
                        color: clr1 ?? Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
