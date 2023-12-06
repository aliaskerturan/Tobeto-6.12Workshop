import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 255, 255, 0),
      brightness: Brightness.dark,
    ));

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme,
    home: Categories(),
  ));
}
