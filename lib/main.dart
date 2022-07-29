import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/screens/home/home_screen.dart';
import 'package:tytydraco_xyz/themes.dart';

void main() {
  runApp(const TytydracoXYZ());
}

/// The main Flutter entry point for the app.
class TytydracoXYZ extends StatelessWidget {
  /// Creates a new [TytydracoXYZ].
  const TytydracoXYZ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tytydraco',
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}
