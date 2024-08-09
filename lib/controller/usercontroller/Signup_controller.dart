import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Usercontrollars extends GetxController {
  //
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  // TextEditingController emailcontroller = TextEditingController();
  // TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  RxBool isLoading = false.obs;
  Future<void> registerUser() async {
    try {
      isLoading.value = true;
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );

      authResult.user!.uid;

      print("User registered with UID: ${authResult.user?.uid}");
      isLoading.value = false;

      // You can handle further logic here, like storing user data locally or navigating to another screen
    } on FirebaseAuthException catch (e) {
      print(e.toString());

      if (e.code == "email-already-in-use") {
        Get.snackbar("Eroor", "Email is Already in User");
      }
    } catch (e) {
      Get.snackbar("Eroor", e.toString());

      // print("Error during Firebase registration: $e");
      // throw Exception("Failed to register user: ${e.toString()}");
    }
  }
}


  // if (e.code == 'email-already-in-use') {
  //       Utils.flushBarErrorMessage(
  //           'Die E-Mail-Adresse wird bereits von einem anderen Konto verwendet',
  //           context);
  //     } else if (e.code == 'missing-email') {
  //       Utils.flushBarErrorMessage('E-Mail Adresse nicht gefunden', context);
  //     } else if (e.code == 'wrong-password') {
  //       Utils.flushBarErrorMessage(e.message.toString(), context);
  //     } else if (e.code == 'user-not-found') {
  //       Utils.flushBarErrorMessage(e.message.toString(), context);
  //     } else {
  //       Utils.flushBarErrorMessage(e.message.toString(), context);
  //     }


// on FirebaseAuthException catch (e) {
//       String errorMsg;
//       setLoading(false);
//       if (kDebugMode) {
//         print(e.code);
//       }
//       switch (e.code) {
//         case 'user-not-found':
//           errorMsg =
//               'Die E-Mail-Adresse ist nicht registriert. Bitte erstellen Sie ein Konto.';
//           break;
//         case 'wrong-password':
//           errorMsg = 'Das Passwort ist inkorrekt. Bitte versuche es erneut.';
//           break;
//         case 'invalid-email':
//           errorMsg = 'Bitte geben Sie eine gültige E-Mail-Adresse ein.';
//           break;
//         case "too-many-requests":
//           errorMsg = 'Zu viele Anfragen. Versuchen Sie es später erneut.';
//           break;
//         case "invalid-credential":
//           errorMsg =
//               "Bitte geben Sie eine gültige E-Mail-Adresse oder ein gültiges Passwort ein.";
//           break;
//         default:
//           errorMsg = 'Ein Fehler ist aufgetreten. Bitte versuche es erneut.';
//       }