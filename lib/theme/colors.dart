import 'package:flutter/material.dart';

const bgGradientLight = Color.fromARGB(255, 5, 10, 136);
const bgGradientDark = Color.fromRGBO(1, 6, 54, 1);

Color useCurrentColor(context) {
  return Theme.of(context).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;
}
