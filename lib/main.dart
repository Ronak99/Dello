import 'package:dello/constants/string_constants.dart';
import 'package:dello/locator.dart';
import 'package:dello/multiprovider_viewmodel.dart';
import 'package:dello/provider/bottom_navigation_provider.dart';
import 'package:dello/services/shared_preference_service.dart';
import 'package:dello/themes/app_theme.dart';
import 'package:dello/ui/auth/login/login_view.dart';
import 'package:dello/ui/landing/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

import 'provider/theme_provider.dart';

void main() {
  setupLocator();
  

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _sharedPreferencesService.getBool(CURRENT_THEME_KEY),
      builder: (context, snapshot) {
        if (snapshot != null && snapshot.data != null) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => ThemeProvider(
                  snapshot.data ? AppTheme.darkTheme : AppTheme.lightTheme,
                ),
              ),
              ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
            ],
            child: EntryView(),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
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
