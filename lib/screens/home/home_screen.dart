import 'package:flutter/material.dart';
import 'package:tytydraco_xyz/screens/home/profile_picture.dart';

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
    return const Scaffold(
      body: Center(
        child: ProfilePicture(),
      ),
    );
  }
}
