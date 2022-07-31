import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/models/link_model.dart';
import 'package:tytydraco_xyz/models/subpage_model.dart';

/// The logo text to display in Source Code pro font.
const logoText = '#!t';

/// The display name to show in the main section.
const displayName = 'tytydraco';

/// The email address to show in the main section.
const email = 'tylernij@gmail.com';

/// Time from app start before fading in the main section, which includes the
/// logo, name, and email.
const fadeDelaySectionMain = Duration(milliseconds: 500);

/// Time from app start before fading in the links section.
const fadeDelaySectionLinks = Duration(milliseconds: 750);

/// Time from app start before fading in the subpages section.
const fadeDelaySectionSubpages = Duration(milliseconds: 1000);

/// Duration for the main section fade in.
const fadeDurationSectionMain = Duration(milliseconds: 500);

/// Duration for the links section fade in.
const fadeDurationSectionLinks = Duration(milliseconds: 500);

/// Duration for the subpages section fade in.
const fadeDurationSectionSubpages = Duration(milliseconds: 500);

/// Vertical height to space between the main and links section.
const sectionSpacerMainLinks = 50.0;

/// Vertical height to space between the links and subpages section.
const sectionSpacerLinksSubpages = 50.0;

/// A list of type [LinkModel] containing the links we are going to display in
/// the links section.
const links = [
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
const subpages = [
  SubpageModel(
    name: 'yessleep',
    description: 'a r/nosleep scraper',
    url: 'https://yessleep.tytydraco.xyz',
  ),
];
