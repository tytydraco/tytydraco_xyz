/// Holds [SubpageModel] with an associated url.
class SubpageModel {
  /// Creates a new [SubpageModel] given a [name], [description], and [url].
  const SubpageModel({
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
