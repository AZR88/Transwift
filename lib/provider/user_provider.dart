import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProvider with ChangeNotifier {
  String _name = 'guest';
  String _email = 'guest';
  String _phone = 'guest';
  String get name => _name;
  String get email => _email;
  String get phone => _phone;

  Future<void> fetchUser(String userId) async {
    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (userDoc.exists) {
        _name = userDoc['fullName'];
        _email = userDoc['email'];
        _phone = userDoc['phoneNumber'];
        notifyListeners();
      }
    } catch (e) {
      print('Failed to fetch user: $e');
    }
  }
}
