import 'package:firebase_auth/firebase_auth.dart';

class Usercontrollars {
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
