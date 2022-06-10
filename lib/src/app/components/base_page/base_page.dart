import 'package:flutter/material.dart';
import 'package:inspace/src/app/modules/settings_page/settings_page.dart';
import 'package:inspace/src/utils/export.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showAppBar;

  const BasePage(
      {Key? key,
      required this.title,
      required this.body,
      required this.showAppBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: Text(title),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                )
              ],
            )
          : null,
      body: Padding(
        padding: EdgeInsets.only(
          left: Paddings.borderPadding,
          right: Paddings.borderPadding,
          top: Paddings.topPadding,
        ),
        child: body,
      ),
    );
  }
}
