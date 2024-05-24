import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

// ignore: must_be_immutable
class Prfile_screen extends StatefulWidget {
  Prfile_screen({super.key});

  @override
  State<Prfile_screen> createState() => _Prfile_screenState();
}

class _Prfile_screenState extends State<Prfile_screen> {
  bool ismale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 63),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                  child: Center(
                    child: Text(
                      "Prfile Setup",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CircularProfileAvatar(
                  '',
                  initialsText: Text("+"),
                  backgroundColor: AppColors.primaryColor,
                  elevation: 2,
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: commontextfield(
                    hinttext: "Your Name",
                    icons: Icons.person_off_outlined,
                    keyboardtype: TextInputType.name,
                    obscuretext: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: commontextfield(
                    hinttext: "User Name",
                    icons: Icons.supervised_user_circle,
                    keyboardtype: TextInputType.name,
                    obscuretext: false,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: ismale
                                ? Colors.deepPurpleAccent
                                : Colors.green.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(Icons.male),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: !ismale
                                ? Colors.deepPurpleAccent
                                : Colors.green.withOpacity(0.2),
                            shape: BoxShape.circle),
                        child: Icon(Icons.female),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button pressed!');
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),

                        // Adjust the value to change the button's roundness
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
