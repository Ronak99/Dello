import 'package:flutter/material.dart';

import 'project_item.dart';

class ProjectListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ProjectItem(),
    );
  }
}
