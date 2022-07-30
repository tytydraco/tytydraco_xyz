import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/sections/links/profile_link.dart';

/// A row of icons with relevant links for tytydraco.
class ProfileLinks extends StatelessWidget {
  /// Creates a new [ProfileLinks].
  const ProfileLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: links.map((link) => ProfileLink(link: link)).toList(),
      ),
    );
  }
}
