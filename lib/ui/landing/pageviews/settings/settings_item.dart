import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/provider/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          showSwitch ? ItemSwitch() : Container(),
        ],
      ),
    );
  }
}

class ItemSwitch extends StatefulWidget {
  @override
  _ItemSwitchState createState() => _ItemSwitchState();
}

class _ItemSwitchState extends State<ItemSwitch> {
  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    toggleSwitch(val) {
      if (val) {
        themeProvider.setDarkTheme();
      } else {
        themeProvider.setLightTheme();
      }
    }

    return Consumer<ThemeProvider>(
      builder: (context, provider, _) => CupertinoSwitch(
        onChanged: toggleSwitch,
        value: provider.isDark(),
        activeColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
