import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mehmetfd.dev/common/app_constants.dart';
import 'package:mehmetfd.dev/common/language_change_notifier.dart';
import 'package:mehmetfd.dev/pages/about_page.dart';
import 'package:mehmetfd.dev/pages/contact_page.dart';
import 'package:mehmetfd.dev/pages/error_page.dart';
import 'package:provider/provider.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageChangeNotifier(),
      child: TooltipVisibility(
        visible: false,
        child: ChangeNotifierProvider(
          create: (context) => LanguageChangeNotifier(),
          child: const TooltipVisibility(visible: false, child: MyApp()),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppConstants.getBackgroundColor(),
        textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.5,
              fontFamily: 'MBytePC230',
              bodyColor: AppConstants.getForegroundColor(),
            ),
        primaryTextTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.5,
              fontFamily: 'MBytePC230',
              bodyColor: AppConstants.getForegroundColor(),
            ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppConstants.getForegroundColor()),
        ),
      ),
      routes: {
        '/': (context) => const AboutPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const ErrorPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
