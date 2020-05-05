import 'package:dello/ui/widgets/dello_components/dello_appbar.dart';
import 'package:flutter/material.dart';

import 'settings_body.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: DelloAppBar(
        title: Text(
          "Settings",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: SettingsBody(),
    );
  }
}