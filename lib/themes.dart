import 'package:flutter/material.dart';

/// A dark gray color, specifically #212121.
const darkGray = Color.fromARGB(255, 33, 33, 33);

/// The main [ThemeData] to use for the app.
final appTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.grey,
  primaryColor: darkGray,
  backgroundColor: darkGray,
  scaffoldBackgroundColor: darkGray,
);
