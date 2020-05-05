import 'package:dello/provider/bottom_navigation_provider.dart';
import 'package:dello/ui/landing/pageviews/home/home_view.dart';
import 'package:dello/ui/landing/pageviews/notifications/notifications_view.dart';
import 'package:dello/ui/landing/pageviews/search/search_view.dart';
import 'package:dello/ui/landing/pageviews/settings/settings_view.dart';
import 'package:dello/ui/widgets/dello_components/dello_bottom_nav_bar.dart';
import 'package:dello/ui/widgets/dello_components/dello_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingView extends StatelessWidget {
  final List<Widget> pageViews = [
    HomeView(),
    NotificationsView(),
    SearchView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: DelloBottomNavBar(),
      floatingActionButton: DelloFloatingActionButton(),
      body: SafeArea(
        child: Consumer<BottomNavigationProvider>(
          builder: (context, provider, _) =>
              pageViews[provider.getCurrentIndex],
        ),
      ),
    );
  }
}
