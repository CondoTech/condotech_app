import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/full_appbar.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class Nfe extends StatelessWidget {
  const Nfe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Paleta.bgColor,
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark),
            color: Paleta.azulEscuro,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Paleta.azulEscuro,
        ),
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 50,
        ),
      ),
      bottomNavigationBar: footer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.note_add,
              color: Paleta.azulEscuro,
              size: 120,
            ),
            mediumTextBold("Cadastrar NFe's", fontColor: Paleta.azulEscuro),
            const SizedBox(height: 80),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              width: double.infinity,
              height: 77,
              decoration: BoxDecoration(
                color: Paleta.lilas,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.note_add,
                    size: 55,
                    color: Paleta.azulEscuro,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Anexar Documento",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Mukata",
                      fontWeight: FontWeight.bold,
                      color: Paleta.azulEscuro,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
