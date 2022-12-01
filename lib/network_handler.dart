import 'package:flutter/widgets.dart';

class NetworkHandler extends ChangeNotifier {
  static NetworkHandler? _instance;

  NetworkHandler._();

  factory NetworkHandler() {
    _instance ??= NetworkHandler._();
    return _instance!;
  }
}
