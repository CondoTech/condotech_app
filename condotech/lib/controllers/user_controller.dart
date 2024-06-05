import 'dart:convert';
import 'package:condotech/models/user.dart';
import 'package:condotech/services/user_service.dart';
import 'package:condotech/util/error_alert.dart';
import 'package:flutter/cupertino.dart';

class UserController {
  VoidCallback? updateState;
  List<dynamic> users = [];
  final _serviceUser = UserService();

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
}
