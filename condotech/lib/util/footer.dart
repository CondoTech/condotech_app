import 'package:condotech/util/color.dart';
import 'package:flutter/material.dart';

Container footer() {
  return Container(
    height: 65,
    width: double.infinity,
    color: Paleta.azulEscuro,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.copyright,
          color: Colors.white,
        ),
        Text(style: TextStyle(color: Colors.white), 'CondoTech 2024'),
        SizedBox(width: 3),
      ],
    ),
  );
}
