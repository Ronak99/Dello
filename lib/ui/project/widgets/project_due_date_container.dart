import 'package:dello/ui/widgets/container/icon_with_text_container.dart';
import 'package:flutter/material.dart';

class ProjectDueDateContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconWithTextContainer(
      icon: Icons.calendar_today,
      text: "20-05-20"
    );
  }
}