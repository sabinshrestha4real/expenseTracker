import 'package:flutter/cupertino.dart';
import 'package:starter/l10n/l10n.dart';

class Translate extends ChangeNotifier {
  Locale? _locale;
  var _changeValue = "en";
  Locale? get locale => _locale;

  get changeValue => _changeValue;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) {
      print("yes it contains");
      return;
    }

    _locale = locale;
    print(_locale);
    notifyListeners();
  }

  void setValue(Object? value) {
    _changeValue = value.toString();

    notifyListeners();
  }
  // void clearLocale() {
  //   _locale = null;
  //   notifyListeners();
  // }
}
