import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/sections/subpages/reveal_arrow.dart';
import 'package:tytydraco_xyz/screens/home/sections/subpages/subpages.dart';

/// Section of the page containing the other hosted subpages.
class SubpagesSection extends StatefulWidget {
  /// Creates a new [SubpagesSection].
  const SubpagesSection({super.key});

  @override
  State<SubpagesSection> createState() => _SubpagesSectionState();
}

class _SubpagesSectionState extends State<SubpagesSection> {
  var _subpagesOpacity = 0.0;

  Future<void> _startFade() async {
    await Future<void>.delayed(fadeDelaySectionSubpages);
    setState(() {
      _subpagesOpacity = 1.0;
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
      opacity: _subpagesOpacity,
      duration: fadeDurationSectionSubpages,
      child: Column(
        children: const [
          RevealArrow(),
          Subpages(),
        ],
      ),
    );
  }
}
