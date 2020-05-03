import 'package:flutter/material.dart';

class AvatarContainer extends StatelessWidget {
  final Widget child;
  final bool isRound;

  AvatarContainer({
    @required this.child,
    this.isRound = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: isRound ? BoxShape.circle : BoxShape.rectangle,
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
          width: 0.5,
        ),
      ),
      child: child,
    );
  }
}
