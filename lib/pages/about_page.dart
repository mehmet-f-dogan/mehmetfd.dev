// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:mehmetfd.dev/common/app_constants.dart';
import 'package:mehmetfd.dev/common/custom_app_bar.dart';
import 'package:mehmetfd.dev/common/custom_dictionary.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';
import 'package:mehmetfd.dev/common/my_app_icons.dart';
import 'package:file_saver/file_saver.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final LanguageChangeNotifier _languageModel = LanguageChangeNotifier();
  static final Map<String, Widget?> pageMap = {};

  void _reload() {
    setState(() {});
  }

  _AboutPageState() {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String lang = LanguageChangeNotifier().selectedLanguage;
    pageMap[lang] ??= Scaffold(
        appBar: CustomAppBar(),
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            CustomDictionary.getWelcomeHeader(lang),
                            textScaleFactor: 5,
                          ),
                          Text(
                            CustomDictionary.getWelcomeText(lang),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: _getProfileSection(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: _getTechStack(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));

    return pageMap[lang]!;
  }

  Column _getProfileSection() {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 200, minHeight: 150),
          child: const Image(
            fit: BoxFit.contain,
            image: AssetImage('graphics/profile_pic.jpg'),
          ),
        ),
        _getProfileButtons(),
        Row(
          children: [
            SelectableText(
              AppConstants.getEmail(),
            ),
          ],
        ),
      ],
    );
  }

  Padding _getTechStack() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  thickness: 5,
                  indent: 15,
                  endIndent: 15,
                  color: AppConstants.getForegroundColor(),
                ),
              ),
              const Text("tech"),
              Expanded(
                child: Divider(
                  thickness: 5,
                  indent: 15,
                  endIndent: 15,
                  color: AppConstants.getForegroundColor(),
                ),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              _getTechTag(FlutterDEVICON.go_plain, "go"),
              _getTechTag(FlutterDEVICON.java_plain, "java"),
              _getTechTag(FlutterDEVICON.scala_plain, "scala"),
              _getTechTag(FlutterDEVICON.csharp_plain, "c#"),
              _getTechTag(FlutterDEVICON.cplusplus_plain, "c++"),
              _getTechTag(FlutterDEVICON.php_plain, "php"),
              _getTechTag(FlutterDEVICON.python_plain, "python"),
              _getTechTag(FlutterDEVICON.nodejs_plain, "nodejs"),
              _getTechTag(FlutterDEVICON.flutter_plain, "flutter"),
              _getTechTag(FlutterDEVICON.docker_plain, "docker"),
              _getTechTag(FlutterDEVICON.mysql_plain, "mysql"),
              _getTechTag(FlutterDEVICON.postgresql_plain, "postgres"),
              _getTechTag(FlutterDEVICON.mongodb_plain, "mongo"),
              _getTechTag(FlutterDEVICON.linux_plain, "linux"),
              _getTechTag(FlutterDEVICON.debian_plain, "debian"),
            ],
          ),
        ],
      ),
    );
  }

  String cvLanguage = LanguageChangeNotifier().selectedLanguage;
  Widget _getProfileButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {
            js.context
                .callMethod('open', [AppConstants.getLinkedinLink(), '_blank']);
          },
          icon: const Icon(MyAppIcons.linkedin),
          label: const Text("linkedin"),
        ),
        TextButton.icon(
          onPressed: () {
            js.context
                .callMethod('open', [AppConstants.getXingLink(), '_blank']);
          },
          icon: const Icon(MyAppIcons.xing),
          label: const Text("xing"),
        ),
        TextButton.icon(
          onPressed: () {
            js.context
                .callMethod('open', [AppConstants.getGithubLink(), '_blank']);
          },
          icon: const Icon(MyAppIcons.github),
          label: const Text("github"),
        ),
        TextButton.icon(
          onPressed: () {
            (() async {
              final byteData = await rootBundle.load('cv/cv_$cvLanguage.pdf');
              FileSaver.instance.saveFile("cv_mehmetfdogan_$cvLanguage",
                  byteData.buffer.asUint8List(), "pdf",
                  mimeType: MimeType.PDF);
            })();
          },
          icon: const Icon(MyAppIcons.fileDownload),
          label: Row(
            children: [
              const Text("cv"),
              const Text("  "),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:
                    CvLanguageDropdownButton((params) => {cvLanguage = params}),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTechTag(IconData data, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(data), Text(text)],
      ),
    );
  }
}

class CvLanguageDropdownButton extends StatefulWidget {
  final Function callback;
  const CvLanguageDropdownButton(this.callback, {super.key});

  @override
  State<CvLanguageDropdownButton> createState() =>
      _CvLanguageDropdownButtonState(callback);
}

class _CvLanguageDropdownButtonState extends State<CvLanguageDropdownButton> {
  String dropdownValue = LanguageChangeNotifier().selectedLanguage;
  final Function callback;
  _CvLanguageDropdownButtonState(this.callback);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          callback(dropdownValue);
        });
      },
      items: LanguageChangeNotifier()
          .languages
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
