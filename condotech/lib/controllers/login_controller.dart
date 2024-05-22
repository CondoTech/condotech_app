import 'dart:convert';
import 'package:condotech/services/user_service.dart';
import 'package:condotech/util/error_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localstorage/localstorage.dart';

class LoginController {
  final _serviceUser = UserService();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  Future<void> login(BuildContext context) async {
    try {
      var email = controllerEmail.text;
      var password = controllerPassword.text;
      var credential = await _serviceUser.login(email, password);
      if (credential is String || credential == null) {
        throw Error();
      }
      var userMap = {
        'uid': credential.uid,
        'email': credential.email,
      };
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('user', jsonEncode(userMap));
      Navigator.of(context).pushReplacementNamed('/home');
    } catch (e) {
      print(e);
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Usuário ou senha incorretos!', 0.05);
    }
  }
}
