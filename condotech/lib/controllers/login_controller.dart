import 'dart:convert';
import 'package:condotech/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../widgets/error_alert.dart';

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
      print(credential);
      // final sharedPreferences = await SharedPreferences.getInstance();
      // await sharedPreferences.setString('user', jsonEncode(credential));
      Navigator.of(context).pushReplacementNamed('/home');
    } catch (e) {
      print(e);
      // GeneralAlert().showErrorModal(context, () {
      //   Navigator.pop(context);
      // }, 'Usuário ou senha incorretos!', 0.05);
    }
  }
}
