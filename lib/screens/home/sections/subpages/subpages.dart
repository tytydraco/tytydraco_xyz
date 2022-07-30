import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// A column with links to other subprojects hosted on the same domain.
class Subpages extends StatelessWidget {
  /// Creates a new [Subpages].
  const Subpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: subpages
            .map(
              (subpage) => InkWell(
                onTap: () => launchUrlString(subpage.url),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(subpage.name),
                      Text(subpage.description),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
