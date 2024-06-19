import 'package:condotech/controllers/employer_controller.dart';
import 'package:condotech/util/footer.dart';
import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  EmployerController employerController = EmployerController();

  void updatedState() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    employerController.getEmployers(context);
    employerController.updateState = updatedState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Paleta.azulEscuro,
        title: const Text("Prestadores de Serviço",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/home', (Route<dynamic> route) => false),
          color: Paleta.bgColor,
        ),
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
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/employer-register'),
                      child: Text("Novo Cadastro"),
                    ),
                    SizedBox(height: 25),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: employerController.employerList.length,
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
                                const CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                      "assets/images/user_photo.png"),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  employerController.employerList[index]
                                      ["name"]!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  employerController.employerList[index]
                                      ["service"]!,
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
