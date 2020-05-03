import 'package:dello/ui/landing/pageviews/home/tab_bar_views/invited_tab.dart';
import 'package:dello/ui/landing/pageviews/home/tab_bar_views/my_projects_tab.dart';
import 'package:flutter/material.dart';

class TabbarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          indicatorWeight: 3.0,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: Theme.of(context).textTheme.subhead,
          unselectedLabelStyle: Theme.of(context).textTheme.overline,
          unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
          isScrollable: false,
          tabs: [
            Container(
              child: Tab(
                text: 'My Projects',
              ),
            ),
            Container(
              child: Tab(
                text: 'Invited',
              ),
            ),
          ],
        ),
        body: TabBarView(
          
          children: <Widget>[
            MyProjectsTab(),
            InvitedTab(),
          ],
        ),
      ),
    );
  }
}
