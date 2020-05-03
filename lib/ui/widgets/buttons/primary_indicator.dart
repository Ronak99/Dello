import 'package:dello/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class PrimaryIndicator extends StatelessWidget {
  final Function onPressed;
  final double dimensions;
  final Widget child;
  final bool isRound;

  PrimaryIndicator({
    @required this.onPressed,
    @required this.dimensions,
    @required this.child,
    @required this.isRound,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: dimensions,
        width: dimensions,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          color: Theme.of(context).colorScheme.background,
          shape: isRound ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isRound ? null : BorderRadius.circular(dimen5),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
