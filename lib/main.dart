import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:socialhive/views/profile/profile_setting.dart';
import 'package:socialhive/views/splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // user Responsive Sizer Package

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Responsive Sizer Example',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Splashscreen());
      },
      maxTabletWidth: 900,
    );
  }
}
