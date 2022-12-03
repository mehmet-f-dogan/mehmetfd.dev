import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static const Color _backgroundColor = Color.fromARGB(255, 50, 50, 50);
  static final Color _foregroundColor = Colors.grey[200]!;
  static final Color _lightShadowColor = Colors.grey[600]!;
  static const Color _darkShadowColor = Colors.black;
  static const Color _alternativeColor = Color.fromARGB(255, 71, 255, 80);
  static final String _linkedinProfileLink = dotenv.env['LINKEDIN_PROFILE']!;
  static final String _xingProfileLink = dotenv.env['XING_PROFILE']!;
  static final String _githubProfileLink = dotenv.env['GITHUB_PROFILE']!;
  static final String _email = dotenv.env['EMAIL_ADDRESS']!;

  static Color getLightShadowColor() {
    return _lightShadowColor;
  }

  static Color getDarkShadowColor() {
    return _darkShadowColor;
  }

  static Color getBackgroundColor() {
    return _backgroundColor;
  }

  static Color getForegroundColor() {
    return _foregroundColor;
  }

  static Color getAlternativeColor() {
    return _alternativeColor;
  }

  static String getLinkedinLink() {
    return _linkedinProfileLink;
  }

  static String getXingLink() {
    return _xingProfileLink;
  }

  static String getGithubLink() {
    return _githubProfileLink;
  }

  static String getEmail() {
    return _email;
  }
}
