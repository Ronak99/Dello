import 'package:flutter/material.dart';

class PrimaryButtonWithIcon extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Icon icon;
  final double width;
  final EdgeInsets margin;
  final EdgeInsets textPadding;
  final double borderRadius;

  PrimaryButtonWithIcon({
    @required this.text,
    @required this.onPressed,
    @required this.icon,
    @required this.width,
    @required this.margin,
    @required this.textPadding,
    @required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: width,
      duration: Duration(milliseconds: 155),
      curve: Curves.easeInOut,
      margin: margin,
      child: RaisedButton(
        padding: textPadding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            icon,
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            )
          ],
        ),
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide.none,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
