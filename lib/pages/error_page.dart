import 'package:flutter/material.dart';
import 'package:mehmetfd.dev/common/custom_app_bar.dart';
import 'package:mehmetfd.dev/common/custom_bottom_navigation_bar.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  final LanguageChangeNotifier _languageModel = LanguageChangeNotifier();
  static final Map<String, Widget?> pageMap = {};
  static const Map<String, String> errorMessageMap = {
    "en": "page not found",
    "de": "seite wurde nicht gefunden",
    "tr": "sayfa bulunamadi",
  };
  void _reload() {
    setState(() {});
  }

  _ErrorPageState() {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageMap[_languageModel.selectedLanguage] ??= Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Center(
        child: Text(
          errorMessageMap[LanguageChangeNotifier().selectedLanguage]!,
        ),
      ),
    );

    return pageMap[_languageModel.selectedLanguage]!;
  }
}
