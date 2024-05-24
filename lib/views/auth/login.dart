import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive/views/auth/forgetpassword.dart';
import 'package:socialhive/views/auth/signup.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/auth/heading.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trade Vista",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Heading_auth(
                maintext: "Sign in to Trade Vista",
                middletext: " to connect with ",
                endtext: "Your Patnner",
                fontsize: 20),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: commontextfield(
                  icons: Icons.email,
                  hinttext: "Email",
                  obscuretext: false,
                  keyboardtype: TextInputType.emailAddress),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                child: commontextfield(
                    icons: Icons.password_rounded,
                    hinttext: "Password",
                    obscuretext: true,
                    keyboardtype: TextInputType.number)),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),

                    // Adjust the value to change the button's roundness
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
            RoundedLoadingButton(
              child: Text('Tap me!',
                  style: TextStyle(color: Colors.deepPurpleAccent)),
              controller: _btnController,
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: Forget_password()));
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Text("Dont have an account"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Signupscreen()));
                    },
                    child: Text("Sign up"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
