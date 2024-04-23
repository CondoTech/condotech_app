import 'package:condotech/util/appbar.dart';
import 'package:condotech/util/color.dart';
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
        child: Column(
          children: [
            UserData("José", "123"),
          ],
        ),
      ),
    );
  }

  Row UserData(String name, String apto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_circle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(name), Text(apto)],
        )
      ],
    );
  }
}
