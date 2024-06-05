import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de exemplos de funcionários
    final List<Map<String, String>> employees = [
      {"name": "João Silva", "service": "Eletricista"},
      {"name": "Maria Santos", "service": "Encanadora"},
      {"name": "Carlos Souza", "service": "Pintor"},
      {"name": "Ana Oliveira", "service": "Faxineira"},
      {"name": "Pedro Almeida", "service": "Jardineiro"},
      {"name": "Juliana Pereira", "service": "Segurança"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text("Prestadores de Serviço",
            style: TextStyle(color: Colors.white)),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Prestadores de Serviço",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Paleta.azulEscuro,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Paleta.lilasClaro,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          side: const BorderSide(color: Colors.black, width: 1),
                        ),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        // Navegar para a tela de cadastro de novo funcionário
                      },
                      child: Text("Novo Cadastro"),
                    ),
                    SizedBox(height: 25),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: employees.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Navegar para a tela de detalhes do funcionário
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Paleta.lilas,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                      "assets/images/user_photo.png"),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  employees[index]["name"]!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  employees[index]["service"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
