import 'package:agromall_test/application/language/langauge_view_model.dart';
import 'package:agromall_test/injectable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/core/app_widget.dart';
import 'presentation/core/theme.dart';

void main() {
  configureDependencies();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => getIt<LanguageViewModel>(),
      ),
      ChangeNotifierProvider(
        create: (context) => AppTheme(),
      )
    ],
    child: MyApp(),
  ));
}
