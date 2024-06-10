import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<User?> createUserWithUsernamePassword(
      String email, String password, String name, String phoneNumber) async {
    try {
      final creds = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      final userRef = _firestore.collection('users').doc(creds.user!.uid);
      await userRef.set({
        'email': email,
        'fullName': name,
        'phoneNumber': phoneNumber,
      });

      return creds.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return null;
    }
  }

  Future<User?> signInWithUsernamePassword(
      String email, String password) async {
    try {
      final creds = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return creds.user;
    } on FirebaseAuthException catch (e) {
      String errorMessage = 'Error signing in. Please try again later.';
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email. Please register.';
          break;
        case 'wrong-password':
          errorMessage = 'Invalid password. Please try again.';
          break;
        case 'invalid-email':
          errorMessage = 'Invalid email address. Please check your email.';
          break;
        case 'user-disabled':
          errorMessage =
              'Your account has been disabled. Please contact support.';
          break;
        default:
          errorMessage =
              'An error occurred while signing in. Please try again later.';
          break;
      }
      print('Error signing in: ${e.code}');
      return Future.error(errorMessage);
    } catch (e) {
      print('Error signing in: $e');
      return Future.error(
          'An unexpected error occurred. Please try again later.');
    }
  }
}