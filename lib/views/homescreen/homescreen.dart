import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

import 'package:socialhive/views/homescreen/dashboard.dart';
import 'package:socialhive/views/profile/profile.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/homepage/commonlisttile.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();

  List<IconData> icons = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    Icons.notification_important_sharp
  ];

  int page = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageviewsection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Profilemain(),
        Dashboard1(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _homepagekey,
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Image.asset(
            "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homepagekey.currentState!.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: CircularProfileAvatar(
                          "",
                          backgroundColor: AppColors.primaryColor,
                          borderColor: AppColors.secondaryColor,
                          borderWidth: 1,
                          elevation: 20,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(Icons.error);
                          },
                          onTap: () {
                            pageController.animateToPage(0,
                                duration: Duration(microseconds: 300),
                                curve: Curves.linear);
                            Navigator.of(context).pop();
                          },
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return Container(
                                child:
                                    Center(child: CircularProgressIndicator()));
                          },
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Uzair Mushtaq",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "uzairmushtaq82@gmail.com",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 10,
                                  letterSpacing: 0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      flex: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 12),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "Premium",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0),
                              ),
                            ),
                          )
                        ],
                      )),
                  Column(
                    // Cretae List Tile For Drawer
                    children: [
                      Commonlisttile(
                        heading: "Subscription",
                        icons1: FontAwesomeIcons.solidCreditCard,
                      ),
                      Commonlisttile(
                          heading: "Setting", icons1: Icons.settings),
                      Commonlisttile(
                          heading: "Help", icons1: Icons.help_outline),
                      Commonlisttile(
                          heading: "Feedback", icons1: Icons.feedback),
                      Commonlisttile(
                          heading: "Tell others", icons1: Icons.person_outline),
                      Commonlisttile(
                          heading: "Rate the app", icons1: Icons.share),
                      SizedBox(
                        height: 60,
                      ),
                      Commonlisttile(heading: "Sign Out", icons1: Icons.logout),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
        activeColor: AppColors.primaryColor,
        inactiveColor: Colors.grey,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
      ),
      body: pageviewsection(),
    );
  }
}
