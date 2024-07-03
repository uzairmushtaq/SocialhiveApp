import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Acceptinvite extends StatelessWidget {
  const Acceptinvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.white,
              title: Image.asset(
                  'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.account,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
              leading: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.primaryColor,
                    size: 28,
                  )),
            )),
        body: Column(children: [
          Container(
            height: 60,
            width: double.infinity,
            color: AppColors.primaryColor,
            child: Center(
              child: Text(
                "See Recieved Invitation",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 340,
              width: 250,
              child: Image.asset(
                  'assets/image/2614.png_860-removebg-preview.png')),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "your recived invitation are currently ",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                'Empty',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ]));
  }
}
