import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/models/link_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// A row of icons with relevant links for tytydraco.
class ProfileLinks extends StatelessWidget {
  /// Creates a new [ProfileLinks].
  const ProfileLinks({super.key});

  /// The links we are going to display.
  static const links = [
    LinkModel(
      FontAwesomeIcons.github,
      'https://github.com/tytydraco',
    ),
    LinkModel(
      FontAwesomeIcons.telegram,
      'https://telegram.me/tytydraco',
    ),
    LinkModel(
      FontAwesomeIcons.box,
      'https://pub.dev/publishers/tytydraco.xyz/packages',
    ),
  ];

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
