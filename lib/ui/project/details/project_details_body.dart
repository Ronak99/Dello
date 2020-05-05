import 'package:dello/ui/project/details/chat_tabbar/chat_tabbar_container.dart';
import 'package:flutter/material.dart';

class ProjectDetailsBody extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(child: ChatTabbarContainer()),
      ],
    );
  }
}
