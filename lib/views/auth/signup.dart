import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import 'package:socialhive/views/auth/login.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/auth/heading.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 320,
                child: Image.asset(
                  "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
                  fit: BoxFit.cover,
                ),
              ),
              Heading_auth(
                  maintext: "Sign up to Trade Vista",
                  middletext: " to connect with Your Patnner ",
                  fontsize: 20),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: commontextfield(
                    icons: Icons.person_2,
                    hinttext: "user name",
                    obscuretext: false,
                    keyboardtype: TextInputType.emailAddress),
              ),
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
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: commontextfield(
                    icons: Icons.confirmation_number_sharp,
                    hinttext: "Confirm password",
                    obscuretext: false,
                    keyboardtype: TextInputType.emailAddress),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: commontextfield(
                    icons: Icons.receipt,
                    hinttext: "Ref code",
                    obscuretext: false,
                    keyboardtype: TextInputType.emailAddress),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: Hero(
                  tag: 'auth',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loginscreen()));
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),

                        // Adjust the value to change the button's roundness
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "By resgistration you are agree to our terms and conditions",
                      style: TextStyle(
                          color: AppColors.primaryColor, fontSize: 15),
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text("Already have an Account "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Loginscreen()));
                    },
                    child: Text(
                      "Sing in",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
