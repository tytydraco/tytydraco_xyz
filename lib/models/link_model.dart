import 'package:flutter/material.dart';

/// Holds [IconData] with an associated url.
class LinkModel {
  /// Creates a new [LinkModel] given [iconData] and a [url].
  const LinkModel({
    required this.iconData,
    required this.url,
  });

  /// The associated icon data.
  final IconData iconData;

  /// The associated URL.
  final String url;
}
