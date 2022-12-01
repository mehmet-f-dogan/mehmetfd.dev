import 'package:flutter/material.dart';
import 'package:mehmetfd.dev/common/app_constants.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  static CustomAppBar? _instance;

  const CustomAppBar._();

  factory CustomAppBar() {
    _instance ??= const CustomAppBar._();
    return _instance!;
  }

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final _languageModel = LanguageChangeNotifier();

  void _reload() {
    setState(() {});
  }

  _CustomAppBarState() {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> languageTabs = [];
    for (var language in _languageModel.languages) {
      languageTabs.add(
        InkWell(
          onTap: () {
            _languageModel.changeLanguage(language);
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: language == _languageModel.selectedLanguage
                          ? AppConstants.getForegroundColor()
                          : Colors.transparent,
                    ),
                  ),
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
