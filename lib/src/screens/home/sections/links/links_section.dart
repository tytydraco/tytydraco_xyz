import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/src/config.dart';
import 'package:tytydraco_xyz/src/screens/home/sections/links/profile_links.dart';

/// Section of the page containing the profile links.
class LinksSection extends StatefulWidget {
  /// Creates a new [LinksSection].
  const LinksSection({super.key});

  @override
  State<LinksSection> createState() => _LinksSectionState();
}

class _LinksSectionState extends State<LinksSection> {
  var _linksOpacity = 0.0;

  Future<void> _startFade() async {
    await Future<void>.delayed(fadeDelaySectionLinks);
    setState(() {
      _linksOpacity = 1.0;
    });
  }

  @override
  void initState() {
    super.initState();
    _startFade();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _linksOpacity,
      duration: fadeDurationSectionLinks,
      child: const ProfileLinks(),
    );
  }
}
