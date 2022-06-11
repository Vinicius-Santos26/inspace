import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:inspace/src/app/notifiers/settings_notifier.dart';
import 'package:inspace/src/utils/export.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: settings,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Consumer<SettingsNotifier>(builder: (context, notifier, child) {
            return SwitchListTile(
                title: const Text(darkMode),
                value: notifier.isDarkModeEnabled,
                secondary: const Icon(Icons.dark_mode, color: Colors.purple),
                onChanged: (bool value) {
                  notifier.toggleTheme(value);
                });
          })
        ]),
        showAppBar: true);
  }
}
