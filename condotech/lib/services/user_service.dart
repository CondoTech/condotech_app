import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//acesso ao banco

class UserService {
  final _userFirestore = FirebaseFirestore.instance.collection('user');
  final _authFirebase = FirebaseAuth.instance;

  Future<User?> getCurrentUser() async {
    try {
      User? user = _authFirebase.currentUser;
      return user;
    } catch (e) {
      print('Erro ao obter usuário atual: $e');
      throw e;
    }
  }

  //Sindico cadastra usuário
  Future<void> createUser(String cpf, String email, String username) async {
    try {
      await _userFirestore.add({
        'cpf': cpf,
        'email': email,
        'username': username,
      });
    } catch (e) {
      print('Erro ao criar Usuário: $e');
      throw e;
    }
  }

  //Primeiro login, valida infos do sindico -> registra no firebase auth
  createUserFirebase(String displayName, String email, String password) async {
    try {
      var userCredential = await _authFirebase.createUserWithEmailAndPassword(
          email: email, password: password);
      await userCredential.user!.updateDisplayName(displayName);

      await _userFirestore.doc(userCredential.user!.uid).set({
        'email': email,
        'displayName': displayName, // Adiciona o nome de exibição
        'password': password,
        'date': DateTime.now().toIso8601String()
      });

      return null; // Retorna nulo para indicar sucesso
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  dynamic getUsers() async {
    try {
      QuerySnapshot querySnapshot = await _userFirestore.get();
      var allData = querySnapshot.docs.map((doc) => doc.data()).toList();
      return allData;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  dynamic login(String email, String password) async {
    try {
      UserCredential credential = await _authFirebase
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = credential.user;
      var userLoggad = user?.uid;
      DocumentSnapshot documentSnapshot =
          await _userFirestore.doc(userLoggad).get();
      var userData = documentSnapshot.data();
      return user;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
