import 'dart:convert';
import 'package:condotech/models/user.dart';
import 'package:condotech/services/user_service.dart';
import 'package:condotech/util/error_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController {
  VoidCallback? updateState;
  List<dynamic> users = [];
  final _serviceUser = UserService();
  final controllerCpf = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmPassword = TextEditingController();
  // late User? user; // Variável para armazenar o usuário atual
  var user = {"name": "", "email": "", "image": ""};

  void getUserData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var jsonUser = jsonDecode(sharedPreferences.getString('user')!);
    user["email"] = jsonUser["email"];
    // user["name"] = jsonUser["username"];
    updateState!.call();
  }

  // Future<void> getCurrentUser(BuildContext context) async {
  //   try {
  //     var fetchedUser = await _serviceUser.getCurrentUser();
  //     print(fetchedUser);
  //     // if (fetchedUser != null) {
  //     //   Map<String, dynamic>? userData =
  //     //       fetchedUser.data() as Map<String, dynamic>?;

  //     //   if (userData != null) {
  //     //     // Crie uma instância de User com os dados do usuário
  //     //     user = User(
  //     //       id: fetchedUser.uid,
  //     //       username: userData['username'] as String? ?? '',
  //     //       email: userData['email'] as String? ?? '',
  //     //       password:
  //     //           '', // Não é possível obter a senha do usuário atualmente logado
  //     //       cpf: userData['cpf'] as String? ?? '',
  //     //     );
  //     //   }
  //   } catch (e) {
  //     GeneralAlert().showErrorModal(context, () {
  //       Navigator.pop(context);
  //     }, 'Erro ao buscar usuário', 0.05);
  //   }
  // }

  Future<void> getUsers(BuildContext context) async {
    try {
      var fetchedUsers = await _serviceUser.getUsers();
      if (fetchedUsers != null) {
        users = fetchedUsers;
        updateState?.call();
      } else {
        users = [];
      }
    } catch (e) {
      print(e);
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao buscar usuários', 0.05);
    }
  }

  Future<void> createUser(BuildContext context) async {
    if (verifyValidForm()) {
      try {
        var email = controllerEmail.text;
        var password = controllerPassword.text;
        await _serviceUser.createUser(email, password);

        GeneralAlert().showErrorModal(context, () {
          Navigator.of(context).pushReplacementNamed('/login');
        }, 'Usuário cadastrado com sucesso!', 0.05);
      } catch (e) {
        GeneralAlert().showErrorModal(context, () {
          Navigator.pop(context);
        }, 'Erro ao cadastrar usuário!', 0.05);
      }
    } else {
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'As senhas devem ser iguais!', 0.05);
    }
  }

  bool verifyValidForm() {
    var password = controllerPassword.text;
    var confirmPassword = controllerConfirmPassword.text;

    if (password != confirmPassword) {
      return false;
    }

    return true;
  }
}
