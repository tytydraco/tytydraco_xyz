import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/models/link_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// A clickable widget of an icon and a url for a profile link.
class ProfileLink extends StatelessWidget {
  /// Creates a new [ProfileLink] given a [link] model.
  const ProfileLink({
    super.key,
    required this.link,
  });

  /// The link to display;
  final LinkModel link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: IconButton(
        onPressed: () => launchUrlString(link.url),
        icon: FaIcon(link.iconData),
      ),
    );
  }
}
