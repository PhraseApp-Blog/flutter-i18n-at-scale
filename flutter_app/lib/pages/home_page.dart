import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/featured_creator_list.dart';
import 'package:flutter_app/widgets/make_bottom_nav_bar.dart';
import '../widgets/make_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeSearchBar(),
      body: const FeaturedCreatorList(),
      bottomNavigationBar: makeBottomNavBar(context),
    );
  }
}
