import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/profile/user_profile.dart';
import 'package:dello/ui/widgets/cached_image.dart';
import 'package:dello/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: dimen25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi Mark,",
                style: Theme.of(context).textTheme.body1,
              ),
              Text(
                "Let's be productive today",
                style: Theme.of(context).textTheme.body2,
              ),
            ],
          ),
          GestureDetector(
            onTap: () => Utils.navigateTo(context, UserProfile()),
            child: Hero(
              tag: "HEROPROFILEWIDGET",
                          child: CachedImage(
                currentUserAvatar,
                isRound: true,
                radius: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
