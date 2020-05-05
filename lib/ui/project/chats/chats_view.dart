import 'package:flutter/material.dart';

import 'chat_controls.dart';
import 'chat_list_item.dart';

class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, i) {
                return ChatListItem();
              },
            ),
          ),
          ChatControls(),
        ],
      ),
    );
  }
}
