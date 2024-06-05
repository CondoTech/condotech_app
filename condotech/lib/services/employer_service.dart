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
      print('Erro ao criar Funcionário: $e');
      throw e;
    }
  }

  dynamic getEmployers() async {
    try {
      QuerySnapshot querySnapshot = await _employerFirestore.get();
      var allData = querySnapshot.docs.map((doc) => doc.data()).toList();
      return allData;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  Future<DocumentSnapshot> getEmployerById(String employerId) async {
    try {
      DocumentSnapshot employerSnapshot =
          await _employerFirestore.doc(employerId).get();

      if (!employerSnapshot.exists) {
        throw Exception('Funcionário não encontrado com o ID fornecido.');
      }
      return employerSnapshot;
    } catch (e) {
      print('Erro ao buscar Funcionário pelo ID: $e');
      throw e;
    }
  }
}
