import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String iconName;
  final Color color;

  SvgIcon({
    @required this.iconName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svg/$iconName.svg",
      color: color,
    );
  }
}
