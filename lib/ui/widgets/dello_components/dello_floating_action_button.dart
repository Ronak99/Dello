import 'package:animations/animations.dart';
import 'package:dello/ui/project/new_project/new_project_view.dart';
import 'package:dello/ui/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

const double _fabDimension = 56.0;

class DelloFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      openBuilder: (BuildContext context, VoidCallback _) => NewProjectView(),
      openColor: Theme.of(context).backgroundColor,
      closedColor: Theme.of(context).backgroundColor,
      closedElevation: 6.0,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      closedBuilder: (BuildContext context, VoidCallback openContainer) {
        return Container(
          height: _fabDimension,
          width: _fabDimension,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: SvgIcon(
              iconName: "add_icon",
            ),
          ),
        );
      },
    );

    // return FloatingActionButton(
    //   onPressed: () => Utils.navigateTo(context, NewProjectView()),
    //   shape: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(10),
    //     borderSide: BorderSide.none,
    //   ),
    //   backgroundColor: Theme.of(context).primaryColor,
    //   child: SvgIcon(
    //     iconName: "add_icon",
    //   ),
    // );
  }
}
