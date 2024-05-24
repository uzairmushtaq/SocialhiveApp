import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              title: Center(
                  child: const Text(
                'Logo ',
                style: TextStyle(
                  color: Colors.pink,
                ),
              )),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.account,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
              leading: Icon(Icons.arrow_back),
            )),
        body: Column(children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.deepPurpleAccent,
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
                    fontWeight: FontWeight.bold),
              ),
              Text('Empty')
            ],
          )
        ]));
  }
}
