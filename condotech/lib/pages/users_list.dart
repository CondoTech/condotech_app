import 'package:condotech/controllers/user_controller.dart';
import 'package:condotech/pages/employer_register.dart';
import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  UserController userController = UserController();

  void updatedState() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    userController.getUsers(context);
    userController.updateState = updatedState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MinAppBar(),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: userController.users.length, // Número de itens na lista
          itemBuilder: (BuildContext context, int index) {
            return userData(userController.users[index]['username'],
                userController.users[index]['cpf']);
          },
        ),
      ),
      bottomNavigationBar: footer(),
    );
  }

  ListTile userData(String name, String apto) {
    return ListTile(
      leading: Icon(color: Paleta.azulEscuro, size: 60, Icons.account_box),
      title: smallText(name),
      subtitle: smallText(apto),
      trailing: Icon(Icons.navigate_next),
      iconColor: Paleta.azulEscuro,
      onTap: () => print("FOI PRO PERFIL"),
    );
  }
}
