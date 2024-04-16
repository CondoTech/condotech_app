import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text(
            style: TextStyle(color: Colors.white), "Primeiro acesso"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 60, 15, 0),
            child: Form(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Paleta.lilas),
                width: 330,
                height: 497,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 45),
                      Text("Nome:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("CPF:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Digite sua nova senha:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Digite sua senha novamente:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Container(
                        width: 260.0,
                        height: 38.0,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            fillColor: Color.fromRGBO(186, 192, 255, 1),
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Paleta.lilasClaro,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.0),
                                  side: const BorderSide(
                                      color: Colors.black, width: 1)),
                              foregroundColor: Colors.black,
                            ),
                            onPressed: () => print("clicou"),
                            child: Text("Cadastrar")),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }
}
