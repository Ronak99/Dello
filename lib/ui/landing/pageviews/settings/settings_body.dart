import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/provider/theme_provider.dart';
import 'package:dello/themes/app_theme.dart';
import 'package:dello/ui/landing/pageviews/settings/settings_item.dart';
import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsBody extends StatelessWidget {
  final int totalItems = 5;

  @override
  Widget build(BuildContext context) {
    final ThemeProvider _themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      padding: EdgeInsets.all(dimen15),
      child: PrimaryContainer(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SettingsItem(
              icon: Icon(Icons.add_to_home_screen),
              text: _themeProvider.getTheme() != AppTheme.lightTheme
                  ? "Switch to light theme"
                  : "Switch to dark theme",
              showSwitch: true,
            ),
          ],
        ),
      ),
    );
  }
}
