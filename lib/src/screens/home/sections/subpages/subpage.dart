import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/src/models/subpage_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// A clickable widget displaying the contents of a [SubpageModel].
class Subpage extends StatelessWidget {
  /// Creates a new [Subpage] given a [subpage] model.
  const Subpage({
    required this.subpage, super.key,
  });

  /// The subpage to display;
  final SubpageModel subpage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrlString(subpage.url, webOnlyWindowName: '_self'),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(subpage.name),
            ),
            Expanded(
              child: Text(
                subpage.description,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
