import 'package:flutter/material.dart';

/// Holds [iconData] with an associated [url].
class LinkModel {
  /// Creates a new [LinkModel] given [iconData] and a [url].
  const LinkModel(this.iconData, this.url);

  /// The associated icon data.
  final IconData iconData;

  /// The associated URL.
  final String url;
}
