import 'package:flutter/material.dart';

class LanguageChangeNotifier extends ChangeNotifier {
  static final List<String> _languages = ["en", "de", "tr"];
  static String _selectedLanguage = "en";

  List<String> get languages => _languages;

  String get selectedLanguage => _selectedLanguage;

  void changeLanguage(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }

  static LanguageChangeNotifier? _instance;

  LanguageChangeNotifier._();

  factory LanguageChangeNotifier() {
    _instance ??= LanguageChangeNotifier._();
    return _instance!;
  }
}
