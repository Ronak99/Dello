import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:flutter/material.dart';

import 'project_attachment_count_container.dart';
import 'project_due_date_container.dart';
import 'project_team_container.dart';

class ProjectItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "UI App For Dello",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: <Widget>[
              ProjectTeamContainer(
                showCompact: true,
              ),
              ProjectDueDateContainer(),
              ProjectAttachmentCountContainer(),
            ],
          ),
          SizedBox(height: 15),
          Text(
            "Cool UI Project which would be then made in Flutter and hopefully used my many people",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
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
