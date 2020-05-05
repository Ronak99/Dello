import 'package:dello/ui/widgets/dello_components/dello_appbar.dart';
import 'package:dello/ui/widgets/buttons/custom_back_button.dart';
import 'package:flutter/material.dart';

import 'new_project_body.dart';


class NewProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: DelloAppBar(
        title: Text(
          "New Project",
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
        actions: <Widget>[],
      ),
      body: NewProjectBody(),
    );
  }
}
