import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:transwift/provider/user_provider.dart';
import 'package:transwift/repos/auth_repo/auth_repo.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepo _authRepo = AuthRepo();
  User? _user;

  User? get user => _user;

  Future<bool> signUp(BuildContext context, String email, String password,
      String name, String phoneNumber) async {
    try {
      _user = await _authRepo.createUserWithUsernamePassword(
          email, password, name, phoneNumber);
      if (_user != null) {
        await _fetchUserData(context);
        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during sign up: $e');
      return false;
    }
  }

  Future<bool> signIn(BuildContext context, String email, String password) async {
    try {
      _user = await _authRepo.signInWithUsernamePassword(email, password);
      if (_user != null) {
        await _fetchUserData(context);
        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during sign in: $e');
      return false;
    }
  }

  Future<void> _fetchUserData(BuildContext context) async {
    if (_user != null) {
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      await userProvider.fetchUser(_user!.uid);
    }
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
    _user = null;
    notifyListeners();
  }
}
