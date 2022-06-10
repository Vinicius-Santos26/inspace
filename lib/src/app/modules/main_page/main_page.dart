import 'package:flutter/material.dart';
import 'package:inspace/src/app/modules/intro_page/intro_page.dart';
import 'package:inspace/src/app/notifiers/reservations_notifier.dart';
import 'package:inspace/src/app/notifiers/settings_notifier.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingsNotifier()),
          ChangeNotifierProvider(create: (context) => ReservationsNotifier()),
        ],
        child: Consumer<SettingsNotifier>(builder: (context, notifier, child) {
          return MaterialApp(
              darkTheme: ThemeData.dark(),
              themeMode:
                  notifier.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
              home: const IntroPage());
        }));
  }
}
