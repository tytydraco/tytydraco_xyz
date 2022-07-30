import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        children: links
            .map(
              (link) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: IconButton(
                  onPressed: () => launchUrlString(link.url),
                  icon: FaIcon(link.iconData),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
