import 'package:dello/ui/project/widgets/project_listview.dart';
import 'package:flutter/material.dart';

class MyProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ProjectListView(),
    );
  }
}