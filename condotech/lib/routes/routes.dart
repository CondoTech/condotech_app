import 'package:condotech/models/user.dart';
import 'package:condotech/pages/bank_statement.dart';
import 'package:condotech/pages/bank_statement_details.dart';
import 'package:condotech/pages/cadastroUser.dart';
import 'package:condotech/pages/detalhesUser.dart';
import 'package:condotech/pages/employer_info.dart';
import 'package:condotech/pages/employer_register.dart';
import 'package:condotech/pages/faq.dart';
import 'package:condotech/pages/listaFunc.dart';
import 'package:condotech/pages/login.dart';
import 'package:condotech/pages/home.dart';
import 'package:condotech/pages/nfe.dart';
import 'package:condotech/pages/perfil.dart';
import 'package:condotech/pages/user_info_edit.dart';
import 'package:condotech/pages/users_list.dart';
import 'package:flutter/cupertino.dart';
import '../pages/register.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const Login(),
    '/login': (context) => const Login(),
    '/home': (context) => const Home(),
    '/perfil': (context) => const Perfil(), //user entra pra ver perfil
    '/register': (context) => Register(),
    '/info': (context) => const EmployerInfo(),
    '/employer-register': (context) => EmployerRegister(),
    '/employer-info': (context) => const EmployerInfo(),
    '/employers': (context) => const EmployeeList(),
    '/users': (context) => const UsersList(),
    '/user-register': (context) => CadastroUser(),
    '/user-info': (context) => const UserDetails(), // sindico
    '/user-edit': (context) => const UserInfoEdit(),
    // '/details-bank': (context) => BankStatementDetails(),
    '/bank': (context) => const BankStatement(),
    '/nfe': (context) => const Nfe(),
    '/faq': (context) => const FaqScreen(),
  };
}
