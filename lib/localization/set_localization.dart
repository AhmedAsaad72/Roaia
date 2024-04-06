// ignore_for_file: prefer_initializing_formals

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SetLocalization {
  late final Locale locale;

  SetLocalization(Locale locale) {
    this.locale = locale;
  }

  static SetLocalization? of(BuildContext context) {
    return Localizations.of<SetLocalization>(context, SetLocalization);
  }

  static const LocalizationsDelegate<SetLocalization> localizationsDelegate =
      _GetLocalizationDelegate();

  Map<String, String> _localizedValues = {};

  Future load() async {
    String jsonStringValues =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslateValue(String key) {
    return _localizedValues[key] ?? "";
  }
}

class _GetLocalizationDelegate extends LocalizationsDelegate<SetLocalization> {
  const _GetLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<SetLocalization> load(Locale locale) async {
    SetLocalization localization = SetLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<SetLocalization> old) {
    return false;
  }
}
