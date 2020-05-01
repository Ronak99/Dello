import 'package:dello/themes/app_theme.dart';
import 'package:dello/ui/startup_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statusbar/statusbar.dart';

import 'provider/theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (provider) => ThemeProvider(AppTheme.lightTheme),
      child: EntryView(),
    );
  }
}

class EntryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getTheme(),
      // navigatorKey: locator<NavigationService>().navigatorKey,
      home: StartupView(),
      // onGenerateRoute: generateRoute,
    );
  }
}
