import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Find_Friend extends StatelessWidget {
  const Find_Friend({super.key});
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
                title: Center(child: const Text('Logo ')),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MdiIcons.account,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ])),
        body: Column(children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Text(
                "Find Your Friend",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10)
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          hintText: "Hi Uzair Type an Exact Name",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10)
                    ],
                  ),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Card(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // Adding some content to the inner container
                height: 80,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 48,
                                width: 50,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepPurpleAccent,
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text('@uzairmushtaq0002'),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('000011'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GFButton(
                                text: 'Accept',
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: GFColors.WHITE,
                                ),
                                color: GFColors.SUCCESS,
                                onPressed: () {}),
                            SizedBox(
                              width: 05,
                            ),
                            GFButton(
                                text: 'Ignore',
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: GFColors.WHITE,
                                ),
                                color: GFColors.DANGER,
                                onPressed: () {}),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     GFButton(
                        //         text: 'Accept',
                        //         textStyle: const TextStyle(
                        //           fontSize: 16,
                        //           color: GFColors.WHITE,
                        //         ),
                        //         color: GFColors.SUCCESS,
                        //         onPressed: () {}),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: 250,
              width: 250,
              child: Image.asset(
                  'assets/image/2614.png_860-removebg-preview.png')),
          SizedBox(
            height: 20,
          ),
          Text(
            "Serach for your friend on social hive or  ",
            style: GoogleFonts.pangolin(),
          ),
          Text(
            "invite your friend to Social Hive",
            style: GoogleFonts.pangolin(),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurpleAccent)),
              onPressed: () {},
              child: Text(
                'Invite a Friend',
                style: TextStyle(color: Colors.white),
              ))
        ]));
  }
}
