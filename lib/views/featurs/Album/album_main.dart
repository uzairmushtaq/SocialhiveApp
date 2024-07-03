import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:socialhive/views/featurs/Album/friend_album.dart';

import 'package:socialhive/views/featurs/Album/my_album.dart';

import 'package:socialhive/widgets/colors/common_app.dart';

class AlbumMain extends StatefulWidget {
  const AlbumMain({super.key});

  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain> {
  List<IconData> icons = [
    Icons.person,
    Icons.person_2_outlined,
  ];

  int page = 0;
  PageController pageController = PageController(initialPage: 0);

  Widget pageviewsection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        MyAlbum(),
        FriendAlbum(),
      ],
    );
  }

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
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.white,
        elevation: 5,
        backgroundColor: Colors.amber,
        shape: CircleBorder(),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
