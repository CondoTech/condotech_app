import 'package:flutter/material.dart';

Text smallText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontFamily: "Mukata",
      color: fontColor,
    ),
  );
}

Text smallTextBold(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontFamily: "Mukata",
      fontWeight: FontWeight.bold,
      color: fontColor,
    ),
  );
}

Text mediumText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontFamily: "Mukata",
      color: fontColor,
    ),
  );
}

Text mediumTextBold(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontFamily: "Mukata",
      fontWeight: FontWeight.bold,
      color: fontColor,
    ),
  );
}

Text bigText(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 32,
      fontFamily: "Mukata",
      color: fontColor,
    ),
  );
}

Text bigTextBold(String text, {Color fontColor = Colors.white}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 32,
      fontFamily: "Mukata",
      fontWeight: FontWeight.bold,
      color: fontColor,
    ),
  );
}
