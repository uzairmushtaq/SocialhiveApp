import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive/controller/usercontroller/user_controllar.dart';
import 'package:socialhive/interfaces/auth/register_services.dart';

import 'package:socialhive/views/auth/login.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/auth/heading.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  SignupServices signupServices = SignupServices();

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
                maintext: "Sign up to Social Hive",
                middletext: " to connect with Your Partner ",
                fontsize: 20,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: commontextfield(
                  controller: signupServices.emailcontroller,
                  icons: Icons.email,
                  hinttext: "Email",
                  obscuretext: false,
                  keyboardtype: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: commontextfield(
                  controller: signupServices.passwordcontroller,
                  icons: Icons.password_rounded,
                  hinttext: "Password",
                  obscuretext: true,
                  keyboardtype: TextInputType.text,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: commontextfield(
                  controller: signupServices.repasswordcontroller,
                  icons: Icons.confirmation_number_sharp,
                  hinttext: "Confirm password",
                  obscuretext: true,
                  keyboardtype: TextInputType.text,
                ),
              ),
              SizedBox(height: 30),
              Hero(
                tag: 'auth',
                child: RoundedLoadingButton(
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  controller: _btnController,
                  color: AppColors.primaryColor,
                  onPressed: () async {
                    try {
                      await Usercontrollar().registerUser(
                        signupServices.emailcontroller.text,
                        signupServices.passwordcontroller.text,
                      );
                      _btnController.success(); // Indicate success
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscreen()),
                      );
                    } catch (e) {
                      print("Error during signup: $e");
                      _btnController.error(); // Indicate error
                      // Show error message to user
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 70),
                  Text("Already have an Account "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Loginscreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
