import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:socialhive/views/featurs/Album/image_view.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
            'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
            size: 28,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/image/natural-7833800_1280.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 15),
                            child: GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(
                                      'assets/image/natural-7833800_1280.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ImageView(
                                          url:
                                              'assets/image/natural-7833800_1280.jpg',
                                        ),
                                        type: PageTransitionType.fade));
                              },
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 60,
                              width: 240,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 10),
                                  BalloonSlider(
                                    value: 0,
                                    color: AppColors.secondaryColor,
                                    onChangeStart: (val) {},
                                    onChanged: (val) {
                                      // Handle slider value change here
                                      print('Slider value changed: $val');
                                    },
                                    onChangeEnd: (val) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Caption",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              AwesomeDialog(
                                context: context,
                                animType: AnimType.scale,
                                dialogType: DialogType.noHeader,
                                body: Center(
                                  child: TextField(
                                    autofocus: false,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    minLines: 2,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: false,
                                      labelText: "Enter Your Caption",
                                      hintStyle: TextStyle(),
                                      contentPadding:
                                          EdgeInsets.only(top: 5, left: 5),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.amber,
                                          // Use primary color here
                                          width: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                btnOkText: 'Confirm Caption',
                                btnOkColor: AppColors.secondaryColor,
                                btnOkOnPress: () {},
                              ).show();
                            },
                            child: Icon(
                              Icons.edit,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: ExpandableText(
                        'Full Stack Mobile App Developer || CEO DEV SOFT || FOUNDER of Bright Future IT Training',
                        expandText: 'show more',
                        collapseText: 'show less',
                        maxLines: 1,
                        linkColor: AppColors.secondaryColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Comments',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return FocusedMenuHolder(
                          onPressed: () {},
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 5.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          openWithTap:
                              true, // Open Focused-Menu on Tap rather than Long Press
                          menuOffset:
                              10.0, // Offset value to show menuItem from the selected item
                          bottomOffsetHeight:
                              80.0, // Offset height to consider, for showing the menu item
                          menuItems: <FocusedMenuItem>[
                            FocusedMenuItem(
                              title: Text("Copy"),
                              trailingIcon: Icon(Icons.copy),
                              onPressed: () {
                                // Handle copy action
                                print("Copy pressed");
                              },
                            ),
                            FocusedMenuItem(
                              title: Text(
                                "Delete",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              trailingIcon: Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {},
                            ),
                          ],
                          child: ListTileMoreCustomizable(
                            title: Text("@shahrozkhalid"),
                            leading: CircleAvatar(
                              backgroundColor: AppColors.primaryColor,
                              radius: 16,
                            ),
                            trailing: Text('1 min ago'),
                            horizontalTitleGap: 0.0,
                            minVerticalPadding: 0.0,
                            minLeadingWidth: 40.0,
                            isThreeLine: false,
                            subtitle: Text('Very NICE Awesome '),
                            onTap: (details) {},
                            onLongPress: (details) {},
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: 3,
                      minLines: 1,
                      focusNode: null,
                      controller: null,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          filled: true,
                          fillColor: AppColors.primaryColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Start Your Conservation',
                          hintStyle: TextStyle(color: Colors.white)),
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
