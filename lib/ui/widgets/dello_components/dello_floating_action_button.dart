import 'package:dello/ui/project/new_project/new_project_view.dart';
import 'package:dello/ui/widgets/svg_icon.dart';
import 'package:dello/utils/utils.dart';
import 'package:flutter/material.dart';

class DelloFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Utils.navigateTo(context, NewProjectView()),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      child: SvgIcon(
        iconName: "add_icon",
      ),
    );
  }
}
