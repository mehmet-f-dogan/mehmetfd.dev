import 'package:flutter/material.dart';
import 'package:mehmetfd.dev/common/app_constants.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  static CustomAppBar? _instance;

  const CustomAppBar._();

  factory CustomAppBar() {
    _instance ??= const CustomAppBar._();
    return _instance!;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    List<Widget> languageTabs = [];
    for (var language in LanguageChangeNotifier().languages) {
      languageTabs.add(
        InkWell(
          onTap: () {
            LanguageChangeNotifier().changeLanguage(language);
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: _languageSelectionIndicator(language),
                ),
                Expanded(flex: 8, child: Center(child: Text(language))),
                Expanded(flex: 2, child: Container()),
              ],
            ),
          ),
        ),
      );
    }
    return AppBar(
      automaticallyImplyLeading: false,
      shadowColor: Colors.transparent,
      actions: [
        ...languageTabs,
      ],
      title: const Text("mehmetfd.dev"),
      backgroundColor: AppConstants.getDarkShadowColor(),
    );
  }
}

class _languageSelectionIndicator extends StatefulWidget {
  final String _language;
  const _languageSelectionIndicator(this._language);

  @override
  State<_languageSelectionIndicator> createState() =>
      __languageSelectionIndicatorState(_language);
}

class __languageSelectionIndicatorState
    extends State<_languageSelectionIndicator> {
  final String _language;

  final _languageModel = LanguageChangeNotifier();

  void _reload() {
    setState(() {});
  }

  __languageSelectionIndicatorState(this._language) {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _language == _languageModel.selectedLanguage
            ? AppConstants.getForegroundColor()
            : Colors.transparent,
      ),
    );
  }
}
