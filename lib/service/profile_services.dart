import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserProfile(String uid, String name, String location,
      String gender, String imageUrl) async {
    try {
      print(uid);
      print(name);
      print(imageUrl);
      await _db.collection('users').doc(uid).set({
        'name': name,
        'location': location,
        'gender': gender,
        'imageUrl': imageUrl,
      });
      print('User profile saved successfully');
    } catch (e) {
      print('Error saving user profile: $e');
      throw e;
    }
  }
}
