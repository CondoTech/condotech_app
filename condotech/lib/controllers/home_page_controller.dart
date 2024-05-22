import 'dart:convert';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController {
  VoidCallback? updateState;
  var user = {"name": "", "email": "", "image": ""};

  void getUserData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var jsonUser = jsonDecode(sharedPreferences.getString('user')!);
    user["name"] = jsonUser["name"];
    user["email"] = jsonUser["email"];

    updateState!.call();
  }
}
