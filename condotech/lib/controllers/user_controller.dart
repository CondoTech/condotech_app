import 'dart:convert';
import 'package:condotech/models/user.dart';
import 'package:condotech/pages/users_list.dart';
import 'package:condotech/services/user_service.dart';
import 'package:condotech/util/error_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController {
  VoidCallback? updateState;
  final _serviceUser = UserService();
  List<User> users = [];

  Future<void> getUsers(BuildContext context) async {
    try {
      users = await _serviceUser.getUsers();
      updateState!.call();
    } catch (e) {
      print(e);
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao buscar usuários', 0.05);
    }
  }
}
