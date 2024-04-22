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
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(text),
        const Divider(
          color: Colors.black,
        ),
      ],
    );
  }
}
