import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Paleta.azulEscuro,
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.question_mark),
            color: Paleta.bgColor,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/home', (Route<dynamic> route) => false),
          icon: const Icon(Icons.arrow_back),
          color: Paleta.bgColor,
        ),
        title: const Text(
          'Conta',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 35),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 25),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          "assets/images/user_photo.png"), // Adicione a foto do usuário aqui
                    ),
                    SizedBox(height: 25),
                    InformationField(title: "Nome:", text: "userName"),
                    SizedBox(height: 25),
                    InformationField(title: "CPF:", text: "userCPF"),
                    SizedBox(height: 25),
                    InformationField(title: "Email:", text: "userEmail"),
                    SizedBox(height: 25),
                    InformationField(
                        title: "Apartamento:", text: "userApartment"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}

class InformationField extends StatelessWidget {
  final String title;
  final String text;

  const InformationField({required this.title, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black),
              ),
            ),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
