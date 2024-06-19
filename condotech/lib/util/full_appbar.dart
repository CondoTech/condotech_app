import 'package:condotech/pages/register.dart';
import 'package:condotech/util/color.dart';
import 'package:flutter/material.dart';

AppBar FullAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Paleta.bgColor,
    toolbarHeight: 85,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
          color: Paleta.azulEscuro,
        ),
        Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 40,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
              color: Paleta.azulEscuro,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/register');
              },
              icon: Icon(Icons.add_box),
              color: Paleta.azulEscuro,
            )
          ],
        )
      ],
    ),
  );
}
