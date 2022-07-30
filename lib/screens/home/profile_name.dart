import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// A widget to show the main profile name which represents tytydraco.
class ProfileName extends StatelessWidget {
  /// Creates a new [ProfileName].
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'tytydraco',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        InkWell(
          onTap: () => launchUrl(
            Uri(
              scheme: 'mailto',
              path: 'tylernij@gmail.com',
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              '<tylernij@gmail.com>',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
