import 'package:firebase_auth/firebase_auth.dart';

class Usercontrollarlogin {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> loginUser(String email, String password) async {
    try {
      UserCredential authResult = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      print("User logged in with UID: ${authResult.user?.uid}");

      // You can handle further logic here, like storing user data locally or navigating to another screen
    } catch (e) {
      print("Error during Firebase login: $e");
      throw Exception("Failed to login user: ${e.toString()}");
    }
  }
}
