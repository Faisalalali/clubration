import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/services/database.dart';

import '../modules/local_user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  LocalUser _userFromFirebase(User? user) {
    return LocalUser(uid: user!.uid, displayName: '');
  }

  Stream<LocalUser> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      if (user == null) {
        throw Exception('Could not sign in anonymously');
      }
      return _userFromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      if (user != null) {
        throw Exception('User not found');
      }
      return _userFromFirebase(user);
    } catch (error) {
      print(error.toString());
      return error.toString().substring(0, error.toString().indexOf(']') + 1);
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result =
          await _auth.createUserWithEmailAndPassword(email: email, password: password).then((result) async {
        print(result.user);
        return await DatabaseService.instance?.createUser(user: LocalUser(uid: result.user!.uid, displayName: 'new'));
      });
      User? user = result.user;

      return _userFromFirebase(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
