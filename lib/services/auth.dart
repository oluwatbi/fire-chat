// ignore_for_file: unnecessary_null_comparison

import 'package:fire_chat/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _userFromFirebaseUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Future signInAnonymously() async {
    try {
      final UserCredential result = await _auth.signInAnonymously();
      final User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // signin user with email and password
  Future<void> signInwithEmailAndPassword(
      {required email, required password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {}
  }

  // create user with email and password
  Future<void> createWithEmailAndPassword(
      {required email, required password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {}
  }

  // signOut user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
