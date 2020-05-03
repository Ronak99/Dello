import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/widgets/buttons/primary_indicator.dart';
import 'package:flutter/material.dart';

class IconWithTextContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  IconWithTextContainer({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 13),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PrimaryIndicator(
            dimensions: 25,
            isRound: false,
            onPressed: () {},
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.onSecondary,
              size: 15,
            ),
          ),
          SizedBox(width: dimen10),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.5,
              letterSpacing: 0.3,
              color: Theme.of(context).primaryColorDark.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
