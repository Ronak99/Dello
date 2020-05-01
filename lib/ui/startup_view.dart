import 'package:dello/provider/theme_provider.dart';
import 'package:dello/ui/auth/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statusbar/statusbar.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // settings the status bar color
    StatusBar.color(Theme.of(context).backgroundColor);

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final ThemeProvider provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: LoginView(),
    );
  }
}
