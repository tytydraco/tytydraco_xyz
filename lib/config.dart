import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/models/link_model.dart';
import 'package:tytydraco_xyz/models/subpage_model.dart';

/// The logo text to display in Source Code pro font.
const String logoText = '#!t';

/// The display name to show in the main section.
const String displayName = 'tytydraco';

/// The email address to show in the main section.
const String email = 'tylernij@gmail.com';

/// Time from app start before fading in the main section, which includes the
/// logo, name, and email.
const Duration fadeDelaySectionMain = Duration(milliseconds: 250);

/// Time from app start before fading in the links section.
const Duration fadeDelaySectionLinks = Duration(milliseconds: 500);

/// Time from app start before fading in the subpages section.
const Duration fadeDelaySectionSubpages = Duration(milliseconds: 1000);

/// Duration for the main section fade in.
const Duration fadeDurationSectionMain = Duration(milliseconds: 500);

/// Duration for the links section fade in.
const Duration fadeDurationSectionLinks = Duration(milliseconds: 500);

/// Duration for the subpages section fade in.
const Duration fadeDurationSectionSubpages = Duration(milliseconds: 500);

/// A list of type [LinkModel] containing the links we are going to display in
/// the links section.
const Iterable<LinkModel> links = [
  LinkModel(
    iconData: FontAwesomeIcons.github,
    url: 'https://github.com/tytydraco',
  ),
  LinkModel(
    iconData: FontAwesomeIcons.telegram,
    url: 'https://telegram.me/tytydraco',
  ),
  LinkModel(
    iconData: FontAwesomeIcons.box,
    url: 'https://pub.dev/publishers/tytydraco.xyz/packages',
  ),
];

/// A list of type [SubpageModel] containing the links to any additional subpages to
/// display in the subpages section.
const Iterable<SubpageModel> subpages = [
  SubpageModel(
    name: 'yessleep',
    description: 'a r/nosleep scraper',
    url: 'https://yessleep.tytydraco.xyz',
  ),
];
