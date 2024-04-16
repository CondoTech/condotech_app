import 'package:condotech/util/color.dart';
import 'package:flutter/material.dart';

AppBar FullAppBar() {
  return AppBar(
      elevation: 0,
      backgroundColor: Paleta.bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Paleta.azulEscuro,
          ),
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            height: 50,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Paleta.azulEscuro,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
                color: Paleta.azulEscuro,
              )
            ],
          )
        ],
      ));
}
