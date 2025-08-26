import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: SwitchListTile(
          title: Text("Dark Mode"),
          value: themeProvider.isDarkMode,
          onChanged: (_) {
            themeProvider.toggleTheme();
          },
        ),
      ),
    );
  }
}
