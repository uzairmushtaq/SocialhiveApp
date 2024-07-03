import 'dart:async';

import 'package:flutter/material.dart';
import 'package:socialhive/views/auth/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
// Cretae Initsatte Function
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
          'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
    ));
  }
}
