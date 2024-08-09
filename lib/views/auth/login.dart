import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:socialhive/controller/usercontroller/Signup_controller.dart';
import 'package:socialhive/controller/usercontroller/Sign_in_controller.dart';
import 'package:socialhive/views/auth/forgetpassword.dart';
import 'package:socialhive/views/auth/signup.dart';
import 'package:socialhive/views/profile/profile_screen.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/auth/heading.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({super.key});

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final loginServices = Get.put(Usercontrollars());
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Column(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
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
                    child: ElevatedButton(
                      child: isLoading
                          ? CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          : Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: isLoading
                          ? null
                          : () async {
                              setState(() {
                                isLoading = true;
                              });
                              try {
                                await Usercontrollarlogin().loginUser(
                                  loginServices.emailcontroller.text,
                                  loginServices.passwordcontroller.text,
                                );
                                setState(() {
                                  isLoading = false;
                                });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()),
                                );
                              } catch (e) {
                                print("Error during login: $e");
                                setState(() {
                                  isLoading = false;
                                });
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
                            child: ForgetPasswordScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

// import 'package:socialhive/controller/usercontroller/user_controllerlogin.dart';
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
//               Column(
//                 children: [
//                   Container(
//                     height: 150,
//                     width: 320,
//                     child: Image.asset(
//                       "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Heading_auth(
//                     maintext: "Sign in to Social Hive",
//                     middletext: " to connect with ",
//                     fontsize: 20.sp,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     height: 50,
//                     child: commontextfield(
//                       controller: loginServices.emailcontroller,
//                       icons: Icons.email,
//                       hinttext: "Email",
//                       obscuretext: false,
//                       keyboardtype: TextInputType.emailAddress,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   SizedBox(
//                     height: 50,
//                     child: commontextfield(
//                       controller: loginServices.passwordcontroller,
//                       icons: Icons.password_rounded,
//                       hinttext: "Password",
//                       obscuretext: true,
//                       keyboardtype: TextInputType.text,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Hero(
//                     tag: 'auth',
//                     child: RoundedLoadingButton(
//                       child: Text(
//                         'Sign In',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 21.sp,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       controller: _btnController,
//                       color: AppColors.primaryColor,
//                       onPressed: () async {
//                         try {
//                           await Usercontrollarlogin().loginUser(
//                             loginServices.emailcontroller.text,
//                             loginServices.passwordcontroller.text,
//                           );
//                           _btnController.success(); // Indicate success
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Prfile_screen()),
//                           );
//                         } catch (e) {
//                           print("Error during login: $e");
//                           _btnController.error(); // Indicate error
//                           // Show error message to user
//                         }
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     alignment: Alignment.topLeft,
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           PageTransition(
//                             type: PageTransitionType.fade,
//                             child: Forget_password(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         "Forget Password",
//                         style: TextStyle(
//                           color: AppColors.primaryColor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15.sp,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 20.w,
//                       ),
//                       Text(
//                         "Don't have an account",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15.sp,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             PageTransition(
//                               type: PageTransitionType.fade,
//                               child: Signupscreen(),
//                             ),
//                           );
//                         },
//                         child: Text(
//                           "Sign up",
//                           style: TextStyle(
//                             color: AppColors.primaryColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
