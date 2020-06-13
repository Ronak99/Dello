import 'package:dello/constants/dimension_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/theme_switcher.dart';

class SettingsItem extends StatelessWidget {
  final String text;
  final Widget icon;
  final bool showSwitch;

  SettingsItem({
    @required this.text,
    @required this.icon,
    @required this.showSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(dimen15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icon,
          SizedBox(width: dimen15),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          Spacer(),
          showSwitch ? ThemeSwitcher() : Container(),
        ],
      ),
    );
  }
}
