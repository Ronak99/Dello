import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/themes/colors.dart';
import 'package:dello/ui/landing/pageviews/home/widgets/stats_container.dart';
import 'package:flutter/material.dart';

class StatsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.only(
        top: dimen25,
        right: dimen25,
        left: dimen25,
      ),
      margin: EdgeInsets.only(bottom: dimen25),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StatsContainer(
            label: "Projects Created",
            count: "24",
            color: Theme.of(context).primaryColor,
          ),
          StatsContainer(
            label: "Invitation Received",
            count: "15",
            color: lightThemeRed,
          ),
          StatsContainer(
            label: "Projects Created",
            count: "24",
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
