import 'package:flutter/foundation.dart';

class ProfileProvider with ChangeNotifier {
  String _name = "Mohan";
  String get name => _name;

  void setname(String name) {
    _name = name;
    notifyListeners();
  }
}
