import 'package:condotech/models/employer.dart';
import 'package:flutter/cupertino.dart';

import '../services/employer_service.dart';
import '../util/error_alert.dart';

class EmployerController {
  final _serviceEmployer = EmployerService();
  final controllerName = TextEditingController();
  final controllerCpf = TextEditingController();
  final controllerService = TextEditingController();
  final controllerResponsible = TextEditingController();
  VoidCallback? updateState;
  List<dynamic> employerList = [];
  late Employer employer;

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

  Future<void> getEmployers(BuildContext context) async {
    try {
      var fetchedEmployer = await _serviceEmployer.getEmployers();
      if (fetchedEmployer != null) {
        employerList = fetchedEmployer;
        print(employerList);
        updateState?.call();
      } else {
        employerList = [];
      }
    } catch (e) {
      print(e);
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao buscar funcionários', 0.05);
    }
  }

  Future<void> getEmployerById(BuildContext context, String employerId) async {
    try {
      var fetchedEmployer = await _serviceEmployer.getEmployerById(employerId);
      if (fetchedEmployer.exists) {
        Map<String, dynamic>? employerData =
            fetchedEmployer.data() as Map<String, dynamic>?;
        if (employerData != null) {
          employer = Employer(
            id: employerId,
            name: employerData['name'] as String? ?? '',
            cpf: employerData['cpf'] as String? ?? '',
            service: employerData['service'] as String? ?? '',
            responsible: employerData['responsible'] as String? ?? '',
            createdBy: employerData['createdBy'] as String? ?? '',
            createdAt: employerData['createdAt'] as String? ?? '',
          );
        }
      } else {
        GeneralAlert().showErrorModal(context, () {
          Navigator.pop(context);
        }, 'Erro ao buscar empregador', 0.05);
      }
    } catch (e) {
      GeneralAlert().showErrorModal(context, () {
        Navigator.pop(context);
      }, 'Erro ao buscar empregador', 0.05);
    }
  }
}
