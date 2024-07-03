import 'package:flutter/material.dart';

class User_status_card_2nd extends StatelessWidget {
  const User_status_card_2nd({
    super.key,
    required this.value,
  });

  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.blue,
        elevation: 20,
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  value,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
