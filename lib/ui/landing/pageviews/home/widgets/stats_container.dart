import 'package:dello/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class StatsContainer extends StatelessWidget {
  final String label;
  final String count;
  final Color color;

  StatsContainer({
    @required this.label,
    @required this.count,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(dimen10)),
      height: 160,
      width: 145,
      margin: EdgeInsets.only(right: dimen15),
      padding: EdgeInsets.all(dimen10),
      child: Column(
        children: <Widget>[
          Text(
            label.toUpperCase(),
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.surface,
              fontSize: 14,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.surface,
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}
