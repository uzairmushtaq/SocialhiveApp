import 'package:flutter/material.dart';
import 'package:socialhive/interfaces/auth/forgetpassword_sevices.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';

class Forget_password extends StatelessWidget {
  Forget_password({super.key});

  ForgetpasswordSevices forgetpasswordSevices = ForgetpasswordSevices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Hive"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Forget Pasword",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.deepPurpleAccent),
                ),
              ),
              Center(
                child: Icon(
                  Icons.lock,
                  size: 90,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              commontextfield(
                  controller: TextEditingController(),
                  icons: Icons.email,
                  hinttext: "Enter your Email",
                  obscuretext: false,
                  keyboardtype: TextInputType.emailAddress),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed!');
                  },
                  child: Text(
                    'Send',
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
            ],
          ),
        ),
      ),
    );
  }
}
