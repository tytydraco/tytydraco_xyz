/// Holds [Subpage] with an associated url.
class Subpage {
  /// Creates a new [Subpage] given a [name], [description], and [url].
  const Subpage({
    required this.name,
    required this.description,
    required this.url,
  });

  /// The name of the subpage.
  final String name;

  /// The description of the contents of the subpage.
  final String description;

  /// The URL to the subpage.
  final String url;
}
