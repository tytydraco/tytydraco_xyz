import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/profile_links.dart';
import 'package:tytydraco_xyz/screens/home/profile_logo.dart';
import 'package:tytydraco_xyz/screens/home/profile_name.dart';

/// The main home screen of the app.
class HomeScreen extends StatefulWidget {
  /// Creates a new [HomeScreen].
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _mainOpacity = 0.0;
  var _linksOpacity = 0.0;

  Future<void> _startFade() async {
    await Future<void>.delayed(fadeDelaySectionMain);
    setState(() {
      _mainOpacity = 1.0;
    });

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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _mainOpacity,
              duration: fadeDurationSectionMain,
              child: Column(
                children: const [
                  ProfileLogo(),
                  ProfileName(),
                ],
              ),
            ),
            const SizedBox(height: sectionSpacerMainLinks),
            AnimatedOpacity(
              opacity: _linksOpacity,
              duration: fadeDurationSectionLinks,
              child: const ProfileLinks(),
            ),
          ],
        ),
      ),
    );
  }
}
