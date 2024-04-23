import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
import 'package:condotech/util/footer.dart';
import 'package:condotech/util/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MinAppBar(),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          userData("Cléber", "123"),
          userData("Cléber", "123"),
          userData("Cléber", "123"),
          userData("Cléber", "123"),
          userData("Cléber", "123"),
          userData("Cléber", "123"),
        ]),
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

  // Row UserData(String name, String apto) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(color: Paleta.azulEscuro, size: 60, Icons.account_circle),
  //       Container(
  //         padding: EdgeInsets.only(left: 15),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Row(
  //               children: [
  //                 smallTextBold("Nome: "),
  //                 smallText(name),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 smallTextBold("Apto: "),
  //                 smallText(apto),
  //               ],
  //             )
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }
}
