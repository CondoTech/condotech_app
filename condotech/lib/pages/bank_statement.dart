import 'package:condotech/pages/bank_statement_details.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class BankStatement extends StatefulWidget {
  const BankStatement({super.key});

  @override
  State<BankStatement> createState() => _BankStatementState();
}

class _BankStatementState extends State<BankStatement> {
  final List<Item> items = [
    Item(
        "Conta de água",
        "Valor pago pelo serviço de jardinagem do condomínio do mês de novembro.",
        2000.9),
    Item(
        "Conta de luz",
        "Valor pago pelo serviço de limpeza do condomínio do mês de novembro.",
        20.9),
    Item(
        "Conta de luz",
        "Valor pago pelo serviço de limpeza do condomínio do mês de novembro.",
        2000.9),
    Item(
        "Conta de luz",
        "Valor pago pelo serviço de limpeza do condomínio do mês de novembro.",
        2000.9),
    Item(
        "Conta de luz",
        "Valor pago pelo serviço de limpeza do condomínio do mês de novembro.",
        2000.9),
  ];

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
            icon: const Icon(Icons.question_mark),
            color: Paleta.azulEscuro,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: Paleta.azulEscuro,
        ),
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 50,
        ),
      ),
      bottomNavigationBar: footer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: bigTextBold("Extrato", fontColor: Paleta.azulEscuro),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Paleta.lilas,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Paleta.azulEscuro,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(6, 10),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallTextBold(item.title, fontColor: Paleta.azulEscuro),
                      const SizedBox(height: 8.0),
                      smallText("Valor: ${item.formattedValue}",
                          fontColor: Paleta.azulEscuro),
                      const SizedBox(height: 8.0),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BankStatementDetails(item: item),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Paleta.lilasClaro,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Paleta.azulEscuro,
                                width: 1.0,
                              ),
                            ),
                            child: smallText("Detalhes"),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String content;
  final double value;

  Item(this.title, this.content, this.value);

  String get formattedValue => 'R\$ ${value.toStringAsFixed(2)}';
}
