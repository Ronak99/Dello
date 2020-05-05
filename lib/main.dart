import 'package:dello/provider/bottom_navigation_provider.dart';
import 'package:dello/themes/app_theme.dart';
import 'package:dello/ui/auth/login/login_view.dart';
import 'package:dello/ui/landing/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(AppTheme.darkTheme)),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
      ],
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
      home: LoginView(),
      // onGenerateRoute: generateRoute,
    );
  }
}
