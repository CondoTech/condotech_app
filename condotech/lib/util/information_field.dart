import 'package:condotech/util/text.dart';
import 'package:flutter/material.dart';

class InformationField extends StatelessWidget {
  final String title;
  final String text;

  const InformationField({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        smallTextBold(title),
        smallText(text),
        const Divider(color: Colors.black),
      ],
    );
  }
}
