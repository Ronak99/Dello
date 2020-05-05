import 'package:flutter/material.dart';

class DelloAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget> actions;
  final Widget leading;
  final bool centerTitle;
  final bool automaticallyImplyLeading;

  const DelloAppBar({
    Key key,
    @required this.title,
    @required this.actions,
    this.leading,
    @required this.centerTitle,
    this.automaticallyImplyLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: leading ?? null,
      actions: actions,
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 10);
}
