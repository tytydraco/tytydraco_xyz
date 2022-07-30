import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tytydraco_xyz/models/link_model.dart';

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

/// Duration for the main section fade in.
const fadeDurationSectionMain = Duration(milliseconds: 500);

/// Duration for the links section fade in.
const fadeDurationSectionLinks = Duration(milliseconds: 500);

/// Vertical height to space between the main and links section.
const sectionSpacerMainLinks = 50.0;

/// A list of type [LinkModel] containing the links we are going to display in
/// the links section.
const links = [
  LinkModel(
    FontAwesomeIcons.github,
    'https://github.com/tytydraco',
  ),
  LinkModel(
    FontAwesomeIcons.telegram,
    'https://telegram.me/tytydraco',
  ),
  LinkModel(
    FontAwesomeIcons.box,
    'https://pub.dev/publishers/tytydraco.xyz/packages',
  ),
];
