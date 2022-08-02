import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/src/screens/home/sections/links/links_section.dart';
import 'package:tytydraco_xyz/src/screens/home/sections/main/main_section.dart';
import 'package:tytydraco_xyz/src/screens/home/sections/subpages/reveal_arrow.dart';
import 'package:tytydraco_xyz/src/screens/home/sections/subpages/subpages_section.dart';

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
    final _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: _screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MainSection(),
                LinksSection(),
                RevealArrow(),
              ],
            ),
          ),
          const SubpagesSection(),
        ],
      ),
    );
  }
}
