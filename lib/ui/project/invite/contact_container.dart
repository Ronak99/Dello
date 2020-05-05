import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  final bool showBorder;

  ContactContainer({
    @required this.showBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(dimen25),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: showBorder
                ? Theme.of(context).colorScheme.onSecondary
                : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CachedImage(
            userAvatar3,
            isRound: true,
            radius: 50,
          ),
          SizedBox(width: dimen15),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Mark Johnson",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              Text(
                "View Profile",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color:
                      Theme.of(context).inputDecorationTheme.labelStyle.color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
