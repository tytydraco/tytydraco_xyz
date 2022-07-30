import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/sections/main/profile_logo.dart';
import 'package:tytydraco_xyz/screens/home/sections/main/profile_name.dart';

/// Section of the page containing the logo and profile information.
class MainSection extends StatefulWidget {
  /// Creates a new [MainSection].
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  var _mainOpacity = 0.0;

  Future<void> _startFade() async {
    await Future<void>.delayed(fadeDelaySectionMain);
    setState(() {
      _mainOpacity = 1.0;
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
      opacity: _mainOpacity,
      duration: fadeDurationSectionMain,
      child: Column(
        children: const [
          ProfileLogo(),
          ProfileName(),
        ],
      ),
    );
  }
}
