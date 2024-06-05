import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title:
            const Text("Detalhes User", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              // Adicionar ação de ajuda
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(62, 50, 62, 35),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 25),
                    CircleAvatar(
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
