import 'package:flutter/material.dart';
import 'package:mehmetfd.dev/common/custom_app_bar.dart';
import 'package:mehmetfd.dev/common/custom_bottom_navigation_bar.dart';
import 'package:mehmetfd.dev/common/custom_dictionary.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            const Expanded(
              flex: 10,
              child: CustomContactForm(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContactForm extends StatefulWidget {
  const CustomContactForm({super.key});

  @override
  CustomContactFormState createState() {
    return CustomContactFormState();
  }
}

class CustomContactFormState extends State<CustomContactForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String topic = "";
  String content = "";

  final LanguageChangeNotifier _languageModel = LanguageChangeNotifier();
  static final Map<String, Widget?> pageMap = {};

  void _reload() {
    setState(() {});
  }

  CustomContactFormState() {
    _languageModel.addListener(_reload);
  }

  @override
  void dispose() {
    _languageModel.removeListener(_reload);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageMap[_languageModel.selectedLanguage] ??= Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: CustomDictionary.getContactTexts(
                  _languageModel.selectedLanguage)[0],
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CustomDictionary.getContactTexts(
                    _languageModel.selectedLanguage)[3];
              }
              if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return CustomDictionary.getContactTexts(
                    _languageModel.selectedLanguage)[4];
              }
              return null;
            },
            onChanged: (value) {
              email = value;
            },
          ),
          TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: CustomDictionary.getContactTexts(
                  _languageModel.selectedLanguage)[1],
            ),
            onChanged: (value) {
              topic = value;
            },
          ),
          TextFormField(
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              labelText: CustomDictionary.getContactTexts(
                  _languageModel.selectedLanguage)[2],
            ),
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            onChanged: (value) {
              content = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing Data'),
                      duration: Duration(days: 300),
                    ),
                  );
                }
              },
              child: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    );

    return pageMap[_languageModel.selectedLanguage]!;
  }
}
