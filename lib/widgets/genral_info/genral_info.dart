import 'package:flutter/material.dart';

class Two_value_card_genral extends StatelessWidget {
  const Two_value_card_genral({
    super.key,
    required this.textmain,
    required this.value,
    this.subwidget,
    required this.clr,
    required this.textmain1,
    required this.value1,
    this.subwidget1,
    required this.clr1,
  });
  final String textmain;
  final String value;
  final Widget? subwidget;
  final Color? clr;

  final String textmain1;
  final String value1;
  final String? subwidget1;
  final Color? clr1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: Card(
        color: clr ?? Colors.white,
        elevation: 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    textmain,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  subwidget ??
                      Text(
                        value,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold),
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textmain1,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  subwidget ??
                      Text(
                        value1,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



//  required this.textmain,
//     required this.value,
//     this.subwidget,
//     required this.clr,
//     required this.textmain1,
//     required this.value1,
//     this.subwidget1,
//     required this.clr1,
//   });
//   final String textmain;
//   final String value;
//   final String? subwidget;
//   final Color? clr;

//   final String textmain1;
//   final String value1;
//   final String? subwidget1;
//   final Color? clr1;
