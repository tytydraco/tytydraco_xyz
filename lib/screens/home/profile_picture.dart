import 'package:flutter/material.dart';

/// A widget to show the main profile picture which represents tytydraco.
///
/// The size of the picture is 256x256.
class ProfilePicture extends StatelessWidget {
  /// Creates a new [ProfilePicture].
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      foregroundImage: AssetImage('logo.png'),
      radius: 64,
    );
  }
}
