import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String iconName;

  SvgIcon({
    @required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/svg/$iconName.svg");
  }
}
