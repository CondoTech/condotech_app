import 'package:condotech/pages/bank_statement.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class BankStatementDetails extends StatefulWidget {
  final Item item;

  const BankStatementDetails({super.key, required this.item});

  @override
  State<BankStatementDetails> createState() => _BankStatementDetailsState();
}

class _BankStatementDetailsState extends State<BankStatementDetails> {
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
            child: bigTextBold("Detalhes", fontColor: Paleta.azulEscuro),
          ),
          const SizedBox(height: 56.0),
          Container(
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
                Align(
                  alignment: Alignment.center,
                  child: mediumTextBold(widget.item.title,
                      fontColor: Paleta.azulEscuro),
                ),
                const SizedBox(height: 8.0),
                smallText(widget.item.content, fontColor: Paleta.azulEscuro),
                const SizedBox(height: 8.0),
                mediumTextBold("Valor: ${widget.item.formattedValue}",
                    fontColor: Paleta.azulEscuro),
                const SizedBox(height: 8.0),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      mediumTextBold("Comprovante:",
                          fontColor: Paleta.azulEscuro),
                      const SizedBox(height: 12.0),
                      GestureDetector(
                        onTap: () {},
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
                          child: smallText("Gerar Recibo"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
