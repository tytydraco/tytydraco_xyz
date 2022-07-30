import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/config.dart';
import 'package:tytydraco_xyz/screens/home/sections/links/links_section.dart';
import 'package:tytydraco_xyz/screens/home/sections/main/main_section.dart';
import 'package:tytydraco_xyz/screens/home/sections/subpages/subpages_section.dart';

/// The main home screen of the app.
class HomeScreen extends StatefulWidget {
  /// Creates a new [HomeScreen].
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height - 100;

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: _screenHeight,
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    MainSection(),
                    SizedBox(height: sectionSpacerMainLinks),
                    LinksSection(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: sectionSpacerLinksSubpages),
            const SubpagesSection(),
          ],
        ),
      ),
    );
  }
}
