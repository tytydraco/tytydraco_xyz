import 'package:flutter/material.dart';

/// A widget to show the main logo which represents tytydraco.
class ProfileLogo extends StatelessWidget {
  /// Creates a new [ProfileLogo].
  const ProfileLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '#!t',
      style: TextStyle(
        fontSize: 128,
      ),
    );
  }
}
