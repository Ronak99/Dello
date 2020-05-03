import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/landing/pageviews/home/layout/tab_bar_container.dart';
import 'package:dello/ui/landing/pageviews/home/widgets/stats_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(dimen25),
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          StatsListView(),
          Flexible(child: TabbarContainer()),
        ],
      ),
    );
  }
}
