import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final AlignmentGeometry alignment;

  PrimaryContainer({
    @required this.child,
    @required this.padding,
    this.margin,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
            blurRadius: 4,
            offset: Offset(0.0, 1.3),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      padding: padding,
      child: child,
    );
  }
}
