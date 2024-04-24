import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//acesso ao banco

class UserService {
  final _userFirestore = FirebaseFirestore.instance.collection('user');
  final _authFibase = FirebaseAuth.instance;

  createUser(String email, String password) async {
    try {
      var user = await _authFibase.createUserWithEmailAndPassword(
          email: email, password: password);

      await _userFirestore.doc(user.user!.uid).set({
        'email': email,
        'password': password,
        'date': DateTime.now().toIso8601String()
      });
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  dynamic login(String email, String password) async {
    try {
      UserCredential credential = await _authFibase.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;
      // var userLoggad = user?.uid;
      // DocumentSnapshot documentSnapshot =
      //     await _userFirestore.doc(userLoggad).get();
      // var userData = documentSnapshot.data();
      return user;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
