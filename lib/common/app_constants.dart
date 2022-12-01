import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static const Color _backgroundColor = Color.fromARGB(255, 50, 50, 50);
  static final Color _foregroundColor = Colors.grey[200]!;
  static final Color _lightShadowColor = Colors.grey[600]!;
  static const Color _darkShadowColor = Colors.black;
  static const Color _alternativeColor = Color.fromARGB(255, 71, 255, 80);

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
    return dotenv.env['LINKEDIN_PROFILE']!;
  }

  static String getXingLink() {
    return dotenv.env['XING_PROFILE']!;
  }

  static String getGithubLink() {
    return dotenv.env['GITHUB_PROFILE']!;
  }
}
