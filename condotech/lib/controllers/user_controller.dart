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
  final controllerUsername = TextEditingController();
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

  //Função chamada no primerio login (page/register) pra cadastrar com firebase auth
  Future<void> createUser(BuildContext context) async {
    if (verifyValidForm()) {
      try {
        var email = controllerEmail.text;
        var password = controllerPassword.text;
        var username = controllerUsername.text;
        //TODO: Função que valida se o email inserido pelo usuário está cadastrado 9pelo sindico) na colection User
        await _serviceUser.createUserFirebase(username, email, password);

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

  //Função do sindico registrar um usuário
  Future<void> registerUser(BuildContext context) async {
    try {
      var cpf = controllerCpf.text;
      var username = controllerUsername.text;
      var email = controllerEmail.text;
      await _serviceUser.createUser(cpf, email, username);

      GeneralAlert().showErrorModal(context, () {
        Navigator.of(context).pushReplacementNamed('/home');
      }, 'Usuário cadastrado com sucesso!', 0.05);
    } catch (e) {
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao cadastrar usuário!', 0.05);
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
