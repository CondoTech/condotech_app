import 'package:flutter/material.dart';
import 'package:condotech/util/color.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<FaqItemData> faqItems = [
    FaqItemData(
      question: 'Como faço para pagar as contas?',
      answer:
          'Você pode pagar suas contas acessando o menu de Pagamentos e selecionando a opção desejada.',
    ),
    FaqItemData(
      question: 'Onde posso encontrar o regimento interno?',
      answer:
          'O regimento interno está disponível na seção de Documentos, dentro do menu de Informações.',
    ),
    FaqItemData(
      question: 'Como posso cadastrar um novo usuário?',
      answer:
          'Para cadastrar um novo usuário, vá até a seção de Cadastro no menu principal e siga as instruções fornecidas.',
    ),
    FaqItemData(
      question: 'Quais são os horários de funcionamento da administração?',
      answer:
          'A administração funciona de segunda a sexta, das 8h às 18h, e aos sábados das 8h às 12h.',
    ),
  ];

  TextEditingController _questionController = TextEditingController();
  TextEditingController _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paleta.bgColor,
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
          'FAQ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Perguntas Frequentes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Paleta.azulEscuro,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: faqItems
                    .map((faqItem) => FaqItem(
                          question: faqItem.question,
                          answer: faqItem.answer,
                        ))
                    .toList(),
              ),
              SizedBox(height: 20),
              Text(
                'Postar Nova Pergunta',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Paleta.azulEscuro,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _questionController,
                decoration: InputDecoration(
                  labelText: 'Pergunta',
                  hintText: 'Digite sua pergunta...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _answerController,
                decoration: InputDecoration(
                  labelText: 'Resposta',
                  hintText: 'Digite sua resposta...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_questionController.text.isNotEmpty &&
                      _answerController.text.isNotEmpty) {
                    setState(() {
                      faqItems.add(
                        FaqItemData(
                          question: _questionController.text,
                          answer: _answerController.text,
                        ),
                      );
                      _questionController.clear();
                      _answerController.clear();
                    });
                  }
                },
                child: Text(
                  'Postar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Paleta.azulEscuro,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FaqItem extends StatelessWidget {
  final String question;
  final String answer;

  const FaqItem({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Paleta.lilas.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Paleta.azulEscuro,
            ),
          ),
          SizedBox(height: 8),
          Text(
            answer,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class FaqItemData {
  final String question;
  final String answer;

  FaqItemData({
    required this.question,
    required this.answer,
  });
}
