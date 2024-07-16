import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive/controller/usercontroller/user_controllar.dart';
import 'package:socialhive/controller/usercontroller/user_controllerlogin.dart';
import 'package:socialhive/interfaces/auth/login_services.dart';
import 'package:socialhive/views/auth/forgetpassword.dart';
import 'package:socialhive/views/auth/signup.dart';
import 'package:socialhive/views/profile/profile_screen.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/auth/heading.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  LoginServices loginServices = LoginServices();

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
                maintext: "Sign in to Social Hive",
                middletext: " to connect with ",
                fontsize: 20.sp,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: commontextfield(
                  controller: loginServices.emailcontroller,
                  icons: Icons.email,
                  hinttext: "Email",
                  obscuretext: false,
                  keyboardtype: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: commontextfield(
                  controller: loginServices.passwordcontroller,
                  icons: Icons.password_rounded,
                  hinttext: "Password",
                  obscuretext: true,
                  keyboardtype: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Hero(
                tag: 'auth',
                child: RoundedLoadingButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  controller: _btnController,
                  color: AppColors.primaryColor,
                  onPressed: () async {
                    try {
                      await Usercontrollarlogin().loginUser(
                        loginServices.emailcontroller.text,
                        loginServices.passwordcontroller.text,
                      );
                      _btnController.success(); // Indicate success
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Prfile_screen()),
                      );
                    } catch (e) {
                      print("Error during login: $e");
                      _btnController.error(); // Indicate error
                      // Show error message to user
                    }
                  },
                ),
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
                        child: Forget_password(),
                      ),
                    );
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Signupscreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: AppColors.primaryColor,
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



// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
// import 'package:socialhive/interfaces/auth/login_services.dart';
// import 'package:socialhive/views/auth/forgetpassword.dart';
// import 'package:socialhive/views/auth/signup.dart';
// import 'package:socialhive/views/profile/profile_screen.dart';
// import 'package:socialhive/widgets/auth/commontextfield.dart';
// import 'package:socialhive/widgets/auth/heading.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';

// class Loginscreen extends StatelessWidget {
//   Loginscreen({super.key});

//   final RoundedLoadingButtonController _btnController =
//       RoundedLoadingButtonController();

// //  button controller design

//   void _doSomething() async {
//     Timer(Duration(seconds: 3), () {
//       _btnController.success();
//     });
//   }

//   LoginServices loginServices = LoginServices();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             children: [
//               Container(
//                 height: 150,
//                 width: 320,
//                 child: Image.asset(
//                   "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Heading_auth(
//                 maintext: "Sign in to Social Hive",
//                 middletext: " to connect with ",
//                 fontsize: 20.sp,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 50,
//                 child: commontextfield(
//                     controller: loginServices.emailcontroller,
//                     icons: Icons.email,
//                     hinttext: "Email",
//                     obscuretext: false,
//                     keyboardtype: TextInputType.emailAddress),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               SizedBox(
//                   height: 50,
//                   child: commontextfield(
//                       controller: loginServices.passwordcontroller,
//                       icons: Icons.password_rounded,
//                       hinttext: "Password",
//                       obscuretext: true,
//                       keyboardtype: TextInputType.number)),
//               SizedBox(
//                 height: 30,
//               ),
//               Hero(
//                 tag: 'auth',
//                 child: RoundedLoadingButton(
//                     child: Text('Sign In',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 21.sp,
//                             fontWeight: FontWeight.bold)),
//                     controller: _btnController,
//                     color: AppColors.primaryColor,
//                     duration: Duration(seconds: 3),
//                     onPressed: () {
//                       Future.delayed(
//                         Duration(seconds: 2),
//                         () {
//                           _btnController.success(); // Indicate success
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Prfile_screen()),
//                           );
//                         },
//                       );
//                     }),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 child: TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           PageTransition(
//                               type: PageTransitionType.fade,
//                               child: Forget_password()));
//                     },
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Forget_password(),
//                             ));
//                       },
//                       child: Text(
//                         "Forget Password",
//                         style: TextStyle(
//                             color: AppColors.primaryColor,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15.sp),
//                       ),
//                     )),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 20.w,
//                   ),
//                   Text(
//                     "Dont have an account",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                             context,
//                             PageTransition(
//                                 type: PageTransitionType.fade,
//                                 child: Signupscreen()));
//                       },
//                       child: Text(
//                         "Sign up",
//                         style: TextStyle(color: AppColors.primaryColor),
//                       ))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
