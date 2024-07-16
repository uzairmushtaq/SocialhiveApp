import 'package:firebase_auth/firebase_auth.dart';

class Usercontrollar {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> registerUser(String email, String password) async {
    try {
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print("User registered with UID: ${authResult.user?.uid}");

      // You can handle further logic here, like storing user data locally or navigating to another screen
    } catch (e) {
      print("Error during Firebase registration: $e");
      throw Exception("Failed to register user: ${e.toString()}");
    }
  }
}




// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:socialhive/module/our_user.dart';

// class Usercontrollar {
//   FirebaseAuth auth = FirebaseAuth.instance;

//   Future<void> registerUser(String email, String password) async {
//     UserCredential authResult = await auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     OurUser user = OurUser(
//       authResult.user?.uid,
//       email,
//       password,
//       null,
//       null,
//       null,
//       null,
//       null,
//       null,
//       null,
//       DateTime.now(),
//     );

//     // You can now use the user instance as needed
//   }
// }



// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:socialhive/module/our_user.dart';

// class Usercontrollar {
//   // Create variable to save auth data in Firebase
//   FirebaseAuth auth = FirebaseAuth.instance;

//   // Functionality
//   Future<void> registerUser(String email, String password) async {
//     // Create a variable to access all credentials using Firebase Auth
//     UserCredential authResult = await auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     // Create an OurUser instance directly with parameters
//     OurUser user = OurUser(
//         null, null, null, null, null, null, null, null, null, null, null);

//     // You can now use the user instance as needed
//   }
// }






// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:socialhive/module/our_user.dart';

// class Usercontrollar {
//   // Cretae variable for save auth data in firebase
//   FirebaseAuth auth = FirebaseAuth.instance;
  
//   //functionality
//   Future<void> Registeruser(String e, String p) async {
//     // OurUser user = OurUser();

//     // create variable access all credential using
//     // firebase auth
//     // why use future keyword Q ka jaisa button ka clixk ho ga to phr user resgiter ho jaa ga phr dobara chack krna para ga account ha ya ni ha

//     UserCredential authresult =
//         await auth.createUserWithEmailAndPassword(email: e, password: p);

       
//         OurUser user = OurUser(
     
     
//       null, // username
//       null, // displayName
//       null, // photoUrl
//       null, // friendUrl
//       null, // friendUid
//       null, // chatRoomId
//       null, // phone
//       DateTime.now(), // accountCreated
//     );
//   }
// }
