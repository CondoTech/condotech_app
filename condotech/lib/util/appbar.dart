import 'package:condotech/util/color.dart';
import 'package:flutter/material.dart';

AppBar MinAppBar() {
  return AppBar(
      elevation: 0,
      backgroundColor: Paleta.bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Paleta.azulEscuro,
          ),
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            height: 50,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark),
            color: Paleta.azulEscuro,
          ),
        ],
      ));
}
