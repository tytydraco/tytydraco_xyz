import 'package:flutter/material.dart';

/// A down-facing arrow to symbolize more content is available underneath.
class RevealArrow extends StatelessWidget {
  /// Creates a new [RevealArrow].
  const RevealArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Icon(
        Icons.arrow_drop_down_sharp,
        color: Colors.grey,
      ),
    );
  }
}
