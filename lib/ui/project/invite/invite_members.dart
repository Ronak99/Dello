import 'package:dello/ui/widgets/dello_components/dello_appbar.dart';
import 'package:dello/ui/widgets/buttons/custom_back_button.dart';
import 'package:flutter/material.dart';

import 'invite_members_body.dart';


class InviteMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: DelloAppBar(
        title: Text(
          "Invite Members",
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
        actions: <Widget>[],
      ),
      body: InviteMembersBody(),
    );
  }
}
