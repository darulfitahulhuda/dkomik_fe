import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const Color kwhite = Colors.white;
const Color kblack = Colors.black;
const Color kbarrier = Colors.black54;
const Color kRichBlack = Color(0xFF000814);
const Color kOxfordBlue = Color(0xFF001D3D);
const Color kPrussianBlue = Color(0xFF003566);
const Color kMikadoYellow = Color(0xFFffc300);
const Color kDavysGrey = Color(0xFF4B5358);
const Color kGrey = Color(0xFF303030);
const Color kToastRed = Color.fromARGB(255, 134, 26, 26);
const Color kTransparent = Colors.transparent;
// text style

///
final TextStyle kHeading5Dark = GoogleFonts.poppins(
    fontSize: 23, fontWeight: FontWeight.w400, color: kwhite);
final TextStyle kHeading6Dark = GoogleFonts.poppins(
    fontSize: 19,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: kwhite);
final TextStyle kSubtitleDark = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: kwhite);
final TextStyle kBodyTextDark = GoogleFonts.poppins(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
  color: kwhite,
);

// text theme
final kTextTheme = TextTheme(
  headline5: kHeading5Dark,
  headline6: kHeading6Dark,
  subtitle1: kSubtitleDark,
  bodyText2: kBodyTextDark,
);

/// Color Scheme For Dark
const kColorSchemeDark = ColorScheme(
  primary: kMikadoYellow,
  primaryContainer: kMikadoYellow,
  secondary: kPrussianBlue,
  secondaryContainer: kPrussianBlue,
  surface: kRichBlack,
  background: kRichBlack,
  error: Colors.red,
  onPrimary: kRichBlack,
  onSecondary: kwhite,
  onSurface: kDavysGrey,
  onBackground: kwhite,
  onError: kwhite,
  brightness: Brightness.dark,
);

/// BorderRadius
BorderRadius kBorderRadius24 = BorderRadius.circular(24);
const kRadius24 = Radius.circular(24);

/// Defaul margin
const kDefaultMargin = 24.0;
