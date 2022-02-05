import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/creator_card.dart';

class FeaturedCreatorList extends StatelessWidget {
  const FeaturedCreatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Featured Creators',
            style: theme.textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              const CreatorCard(name: "Momo"),
              const Divider(
                indent: 8.0,
                endIndent: 8.0,
                height: 24,
              ),
              const CreatorCard(name: "Houda"),
            ],
          ),
        ),
      ],
    );
  }
}
