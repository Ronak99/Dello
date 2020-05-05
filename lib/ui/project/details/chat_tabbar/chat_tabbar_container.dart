import 'package:dello/ui/project/widgets/project_team_container.dart';
import 'package:flutter/material.dart';

import 'tab_bar_views/chats_tab.dart';
import 'tab_bar_views/files_tab.dart';

class ChatTabbarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 0.5,
                ),
              ),
            ),
            child: TabBar(
              indicatorWeight: 3.0,
              indicatorColor: Theme.of(context).primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Theme.of(context).primaryColor,
              labelStyle: Theme.of(context).textTheme.subhead,
              unselectedLabelStyle: Theme.of(context).textTheme.overline,
              unselectedLabelColor:
                  Theme.of(context).inputDecorationTheme.labelStyle.color,
              isScrollable: false,
              tabs: [
                Container(
                  child: Tab(
                    text: 'Chats',
                  ),
                ),
                Container(
                  child: Tab(
                    text: 'Files',
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChatsTab(),
            FilesTab(),
          ],
        ),
      ),
    );
  }
}
