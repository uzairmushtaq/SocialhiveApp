// Module

import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser {
  final String? uid;
  String? email;
  String? password;
  String? username;
  String? Displayname;
  String? photourl;
  String? friendurl;
  String? frienduid;
  String? chatroomid;
  String? phone;
  DateTime? accountcreated;

  OurUser(
      {this.uid,
      this.email,
      this.password,
      this.username,
      this.Displayname,
      this.photourl,
      this.friendurl,
      this.frienduid,
      this.chatroomid,
      this.phone,
      this.accountcreated});

  factory OurUser.fromDocument(
      DocumentSnapshot<Map<String, dynamic>> document) {
    return OurUser(
      uid: document.data()!['uid'],
    );
  }
}
