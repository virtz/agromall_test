// import 'dart:math';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/country/model/language.dart';


class LanguageViewModel extends ChangeNotifier {
  final List<Language> _languages = [
    Language("Arabic", "ara"),
    Language("Breton", "bre"),
    Language("Czech", "ces"),
    Language("Welsh", "cym"),
    Language("German", "deu"),
    Language("Estonian", "est"),
    Language("Finish", "fin"),
    Language("French", "fra"),
    Language("Croatian", "hrv"),
    Language("Hungarian", "hun"),
    Language("Italian", "ita"),
    Language("Japanese", "jpn"),
    Language("Korean", "kor"),
    Language("Dutch", "nld"),
    Language("Persian", "per"),
    Language("Polish", "pol"),
    Language("Portuguese", "por"),
    Language("Russian", "rus"),
    Language("Slovak", "slk"),
    Language("Spanish", "spa"),
    Language("Serbian", "srp"),
    Language("Turkish", "tur"),
    Language("Swedish", "swe"),
    Language("Urdu", "urd"),
    Language("Chinese", "zho"),
    Language('English', "eng"),
    // Language('Bahasa'),
    // Language('Deutsch'),
    // Language('English'),
    // Language('Español'),
    // Language('Française'),
    // Language('Italiano'),
    // Language('Português'),
    // Language('Русский'),
    // Language('Svenska'),
    // Language('Türkçe'),
    // Language('普通话'),
    // Language('بالعربية'),
    // Language('বাংলা')
  ];

  Language? _selectedLanguage;

  List<Language> get languages => _languages;

  Language? get selectedLanguage => _selectedLanguage;

  void selectLanguage(Language language) {
    _selectedLanguage = language;
    log(selectedLanguage.toString());
    notifyListeners();
  }
}
