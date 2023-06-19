import 'package:calendar_flutter_app/main_viewmodel.dart';
import 'package:calendar_flutter_app/pages/introd/introd2/introd2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'base/di/locator.dart';
import 'generated/l10n.dart';
import 'pages/introd/introd1/introd1_page.dart';

void main() {
  setUpInjector();
  runApp(MyApp());
}

const defaultPlayerCount = 4;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<MainVM>(create: (_) => MainVM()),
        ],
        child: MaterialApp(
            title: 'My Calander',
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            themeMode: ThemeMode.system,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('en'),
            supportedLocales: S.delegate.supportedLocales,
            home: const SplashScreen2()));
    //);
  }
}
