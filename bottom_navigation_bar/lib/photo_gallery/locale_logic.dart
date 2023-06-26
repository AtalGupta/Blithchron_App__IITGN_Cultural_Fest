// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:intl/intl_standalone.dart';
// import 'package:bottom_navigation_bar/photo_gallery/main.dart';
// // import 'package:wonders/common_libs.dart';

// class LocaleLogic {
//   AppLocalizations? _strings;
//   AppLocalizations get strings => _strings!;

//   bool get isLoaded => _strings != null;

//   bool get isEnglish => strings.localeName == 'en';

//   Future<void> load() async {
//     final localeCode = settingsLogic.currentLocale.value ?? await findSystemLocale();
//     Locale locale = Locale(localeCode.split('_')[0]);
//     if (kDebugMode) {
//       // Uncomment for testing in chinese
//       // locale = Locale('zh');
//     }
//     if (AppLocalizations.supportedLocales.contains(locale) == false) {
//       locale = Locale('en');
//     }
//     settingsLogic.currentLocale.value = locale.languageCode;
//     _strings = await AppLocalizations.delegate.load(locale);
//   }

//   Future<void> loadIfChanged(Locale locale) async {
//     bool didChange = _strings?.localeName != locale.languageCode;
//     if (didChange && AppLocalizations.supportedLocales.contains(locale)) {
//       _strings = await AppLocalizations.delegate.load(locale);
//     }
//   }
// }
