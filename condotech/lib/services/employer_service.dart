import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//acesso ao banco

class EmployerService {
  final _employerFirestore = FirebaseFirestore.instance.collection('employee');
  final _authFirebase = FirebaseAuth.instance;

  Future<void> createEmployer(
      String name, String cpf, String service, String responsible) async {
    try {
      // Verifica se o usuário atual está autenticado
      User? user = _authFirebase.currentUser;
      if (user == null) {
        throw Exception('Usuário não autenticado.');
      }

      await _employerFirestore.add({
        'name': name,
        'cpf': cpf,
        'service': service,
        'responsible': responsible,
        'createdBy': user.uid,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Erro ao criar empregador: $e');
      throw e;
    }
  }
}
