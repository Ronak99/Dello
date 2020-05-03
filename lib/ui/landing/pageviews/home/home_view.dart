import 'package:dello/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

import 'layout/home_header.dart';
import 'layout/home_view_body.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: dimen25),
            HomeHeader(),
            SizedBox(height: dimen25),
            Flexible(child: HomeViewBody()),
          ],
        ),
      ),
    );
  }
}
