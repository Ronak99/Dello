import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/project/invite/invite_members.dart';
import 'package:dello/ui/widgets/buttons/primary_indicator.dart';
import 'package:dello/ui/widgets/cached_image.dart';
import 'package:dello/ui/widgets/container/avatar_container.dart';
import 'package:dello/utils/utils.dart';
import 'package:flutter/material.dart';

class ProjectTeamContainer extends StatelessWidget {
  final bool showCompact;

  ProjectTeamContainer({
    @required this.showCompact,
  });

  @override
  Widget build(BuildContext context) {
    return showCompact
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AvatarContainer(
                child: CachedImage(
                  userAvatar2,
                  radius: 25,
                  isRound: true,
                ),
              ),
              SizedBox(width: 5),
              AvatarContainer(
                child: CachedImage(
                  userAvatar3,
                  radius: 25,
                  isRound: true,
                ),
              ),
              SizedBox(width: 5),
              PrimaryIndicator(
                onPressed: () {},
                dimensions: 25,
                isRound: true,
                child: Text(
                  "+2",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ],
          )
        : ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              AvatarContainer(
                child: CachedImage(
                  userAvatar2,
                  radius: 45,
                  isRound: true,
                ),
              ),
              SizedBox(width: 5),
              AvatarContainer(
                child: CachedImage(
                  userAvatar3,
                  radius: 45,
                  isRound: true,
                ),
              ),
              SizedBox(width: 5),
              PrimaryIndicator(
                onPressed: () => Utils.navigateTo(context, InviteMembers()),
                dimensions: 45,
                isRound: true,
                child: Text(
                  "+",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    height: 1.2,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ],
          );
  }
}
