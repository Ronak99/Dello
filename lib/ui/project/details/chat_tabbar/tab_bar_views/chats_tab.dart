import 'package:dello/ui/project/chats/chats_view.dart';
import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ChatsView(),
    );
  }
}