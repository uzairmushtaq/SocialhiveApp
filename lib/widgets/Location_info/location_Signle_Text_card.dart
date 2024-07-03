import 'package:flutter/material.dart';


class location_card_signlel_text extends StatelessWidget {
  const location_card_signlel_text({
    super.key,
    required this.title,
    required this.cardcolr,
    required this.clr,
  });
  final String title;

  final Color cardcolr;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 160,
      child: Card(
        elevation: 10,
        color: cardcolr,
        child: Container(
          child: Row(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(color: clr, fontWeight: FontWeight.bold),
)),
            ],
          ),
        ),
      ),
    );
  }
}
