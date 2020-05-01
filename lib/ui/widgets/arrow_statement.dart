import 'package:dello/ui/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class ArrowStatement extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool coverWholeLine;

  ArrowStatement({
    @required this.text,
    @required this.onTap,
    this.coverWholeLine = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: coverWholeLine ? MainAxisSize.max : MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: Theme.of(context).textTheme.overline,
          ),
          SizedBox(width: 10),
          SvgIcon(
            iconName: "theme_arrow",
          ),
        ],
      ),
    );
  }
}
