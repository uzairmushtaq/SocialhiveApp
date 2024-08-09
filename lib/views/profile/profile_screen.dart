import 'dart:io';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:socialhive/service/profile_services.dart';
import 'package:socialhive/views/homescreen/homescreen.dart';
import 'package:socialhive/widgets/auth/commontextfield.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool ismale = false;

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<String> _uploadImage(File image) async {
    try {
      final uid = FirebaseAuth.instance.currentUser?.uid ?? '';
      final storageRef =
          FirebaseStorage.instance.ref().child('user_images').child('$uid.jpg');
      await storageRef.putFile(image);
      return await storageRef.getDownloadURL();
    } catch (e) {
      print('Image upload error: $e');
      throw e;
    }
  }

  Future<void> _saveUserProfile() async {
    if (_nameController.text.isEmpty || _locationController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Name and Location cannot be empty')),
      );
      _btnController.reset();
      return;
    }

    try {
      final uid = FirebaseAuth.instance.currentUser?.uid ?? '';
      if (uid.isEmpty) {
        throw Exception('User not authenticated');
      }
      final gender = ismale ? 'Male' : 'Female';
      String imageUrl = '';

      if (_imageFile != null) {
        imageUrl = await _uploadImage(_imageFile!);
      }

      await FirestoreService().saveUserProfile(
        uid,
        _nameController.text,
        _locationController.text,
        gender,
        imageUrl,
      );

      _btnController.success();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    } catch (e) {
      print('Profile save error: $e');
      _btnController.reset();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save profile. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 320,
                child: Image.asset(
                  "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: AppColors.primaryColor,
                child: Center(
                  child: Text(
                    "Profile Setup",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _pickImage,
                child: CircularProfileAvatar(
                  '',
                  child: _imageFile == null
                      ? Icon(Icons.add_a_photo, size: 50, color: Colors.white)
                      : ClipOval(
                          child: Image.file(
                            _imageFile!,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                  backgroundColor: AppColors.primaryColor,
                  elevation: 2,
                  radius: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: commontextfield(
                  controller: _nameController,
                  hinttext: "Your Name",
                  icons: Icons.person_off_outlined,
                  keyboardtype: TextInputType.name,
                  obscuretext: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: commontextfield(
                  controller: _locationController,
                  hinttext: "Your Location",
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
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
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
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Hero(
                tag: 'auth',
                child: RoundedLoadingButton(
                    child: Text('Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp)),
                    controller: _btnController,
                    color: AppColors.primaryColor,
                    duration: Duration(seconds: 3),
                    onPressed: _saveUserProfile),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
// import 'package:flutter/material.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
// import 'package:socialhive/views/homescreen/homescreen.dart';
// import 'package:socialhive/widgets/auth/commontextfield.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';

// // ignore: must_be_immutable

// class Prfile_screen extends StatefulWidget {
//   Prfile_screen({super.key});

//   @override
//   State<Prfile_screen> createState() => _Prfile_screenState();
// }

// class _Prfile_screenState extends State<Prfile_screen> {
//   bool ismale = false;

//   final RoundedLoadingButtonController _btnController =
//       RoundedLoadingButtonController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           color: Colors.white,
//           child: Column(
//             children: [
//               Container(
//                 height: 100,
//                 width: 320,
//                 child: Image.asset(
//                   "assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 height: 60,
//                 width: double.infinity,
//                 color: AppColors.primaryColor,
//                 child: Center(
//                   child: Text(
//                     "Prfile Setup",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20.sp),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               CircularProfileAvatar(
//                 '',
//                 initialsText: Text("+"),
//                 backgroundColor: AppColors.primaryColor,
//                 elevation: 2,
//                 radius: 50,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(40),
//                 child: commontextfield(
//                   controller: TextEditingController(),
//                   hinttext: "Your Name",
//                   icons: Icons.person_off_outlined,
//                   keyboardtype: TextInputType.name,
//                   obscuretext: false,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 40, right: 40),
//                 child: commontextfield(
//                   controller: TextEditingController(),
//                   hinttext: "Your Location",
//                   icons: Icons.supervised_user_circle,
//                   keyboardtype: TextInputType.name,
//                   obscuretext: false,
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         ismale = true;
//                       });
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           color: ismale
//                               ? AppColors.primaryColor
//                               : AppColors.secondaryColor,
//                           shape: BoxShape.circle),
//                       child: Icon(
//                         Icons.male,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         ismale = false;
//                       });
//                     },
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           color: !ismale
//                               ? AppColors.primaryColor
//                               : AppColors.secondaryColor,
//                           shape: BoxShape.circle),
//                       child: Icon(
//                         Icons.female,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Hero(
//                 tag: 'auth',
//                 child: RoundedLoadingButton(
//                     child: Text('Submit',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20.sp)),
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
//                                 builder: (context) => Homescreen()),
//                           );
//                         },
//                       );
//                     }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
