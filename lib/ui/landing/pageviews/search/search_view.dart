import 'package:dello/ui/landing/pageviews/search/search_body.dart';
import 'package:dello/ui/widgets/dello_components/dello_appbar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: DelloAppBar(
        title: Text(
          "Search",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: SearchBody(),
    );
  }
}