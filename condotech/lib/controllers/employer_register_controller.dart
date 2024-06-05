import 'package:flutter/cupertino.dart';

import '../services/employer_service.dart';
import '../util/error_alert.dart';

class RegisterEmployerController {
  final _serviceEmployer = EmployerService();
  final controllerName = TextEditingController();
  final controllerCpf = TextEditingController();
  final controllerService = TextEditingController();
  final controllerResponsible = TextEditingController();

  Future<void> createEmployer(BuildContext context) async {
    try {
      var name = controllerName.text;
      var cpf = controllerCpf.text;
      var service = controllerService.text;
      var responsible = '1';

      await _serviceEmployer.createEmployer(name, cpf, service, responsible);

      GeneralAlert().showErrorModal(context, () {
        Navigator.of(context).pushReplacementNamed('/home');
      }, 'Usuário cadastrado com sucesso!', 0.05);
    } catch (e) {
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao cadastrar usuário!', 0.05);
    }
  }
}
