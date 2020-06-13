import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/widgets/buttons/custom_back_button.dart';
import 'package:dello/ui/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: 0,
            child: CachedImage(currentUserCoverImage),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(dimen15),
                ),
                padding: EdgeInsets.all(5),
                child: CustomBackButton(),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(dimen25),
                ),
                border: Border.all(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                  width: 0.5,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
                children: <Widget>[
                  Text(
                    "Mark Zuckerberg",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).backgroundColor,
                    width: 5,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Hero(
                  tag: "HEROPROFILEWIDGET",
                  child: CachedImage(
                    currentUserAvatar,
                    radius: 180,
                    isRound: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
