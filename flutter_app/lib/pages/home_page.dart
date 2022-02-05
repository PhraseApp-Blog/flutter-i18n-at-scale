import 'package:flutter/material.dart';
import '../widgets/make_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: makeSearchBar(),
      body: Center(child: Text("App content")),
    );
  }
}
