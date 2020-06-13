import 'package:dello/provider/theme_provider.dart';
import 'package:dello/ui/landing/pageviews/settings/settings_item_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class ThemeSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);


    return ViewModelBuilder<SettingsItemViewModel>.reactive(
      viewModelBuilder: () => SettingsItemViewModel(themeProvider),
      builder: (context, model, child) => CupertinoSwitch(
        onChanged: model.toggleSwitch,
        value: model.getCurrentThemeSwitch(),
        activeColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
