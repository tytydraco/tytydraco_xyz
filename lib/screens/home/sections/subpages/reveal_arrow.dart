import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';

/// A down-facing arrow to symbolize more content is available underneath.
class RevealArrow extends StatefulWidget {
  /// Creates a new [RevealArrow].
  const RevealArrow({super.key});

  @override
  State<RevealArrow> createState() => _RevealArrowState();
}

class _RevealArrowState extends State<RevealArrow> {
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
      child: const Icon(
        Icons.arrow_drop_down_sharp,
        color: Colors.grey,
      ),
    );
  }
}
