import 'package:flutter/material.dart';
import 'package:mehmetfd.dev/common/app_constants.dart';
import 'package:mehmetfd.dev/common/custom_dictionary.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  static CustomBottomNavigationBar? _instance;

  const CustomBottomNavigationBar._();

  factory CustomBottomNavigationBar() {
    _instance ??= const CustomBottomNavigationBar._();
    return _instance!;
  }

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  final LanguageChangeNotifier _languageModel = LanguageChangeNotifier();

  void _reload() {
    setState(() {});
  }

  _CustomBottomNavigationBarState() {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.popAndPushNamed(context, index == 0 ? "/about" : "/contact");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppConstants.getBackgroundColor(),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: CustomDictionary.getNavBarTexts(
              _languageModel.selectedLanguage)[0],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.email),
          label: CustomDictionary.getNavBarTexts(
              _languageModel.selectedLanguage)[1],
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) => {_onItemTapped(index, context)},
    );
  }
}
