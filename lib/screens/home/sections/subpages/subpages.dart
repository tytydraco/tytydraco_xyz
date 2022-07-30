import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/sections/subpages/subpage.dart';

/// A column with links to other subprojects hosted on the same domain.
class Subpages extends StatelessWidget {
  /// Creates a new [Subpages].
  const Subpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: subpages.map((subpage) => Subpage(subpage: subpage)).toList(),
      ),
    );
  }
}
