import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/creator_card.dart';

class FeaturedCreatorList extends StatelessWidget {
  const FeaturedCreatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
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
                const CreatorCard(
                  name: "Hala Mahmoud",
                  profileImage: "lorem-face-6536.jpg",
                  productImage1: "asiya-kiev-gUzOZaswagA-unsplash.jpg",
                  productImage2: "jacob-bentzinger-USy_fK9s9hA-unsplash.jpg",
                  specialties: ["Morrocan leather", "Belts", "Wallets"],
                ),
                divider(),
                const CreatorCard(
                  name: "Daniel Garcia",
                  profileImage: "lorem-face-4343.jpg",
                  productImage1: "max-bohme-ND477oBF3i4-unsplash.jpg",
                  productImage2: "thomas-john-9dZAGDv-FxU-unsplash.jpg",
                  specialties: [
                    "Mexican Day of the Dead (Día de Muertos) sculptures",
                    "Ceramic sculptures"
                  ],
                ),
                divider(),
                const CreatorCard(
                  name: "Mary Louis",
                  profileImage: "lorem-face-4999.jpg",
                  productImage1: "eugenia-romanova-cJnwJxXABiY-unsplash.jpg",
                  productImage2: "denis-kirichkov-5h12h1Vwzr0-unsplash.jpg",
                  specialties: [
                    "Wooden art",
                    "Intricate woodworking",
                    "Facades"
                  ],
                ),
                divider(),
                const CreatorCard(
                  name: "Rui Yang",
                  profileImage: "lorem-face-1140.jpg",
                  productImage1: "jay-huang-7c4lkKgnOko-unsplash.jpg",
                  productImage2: "pille-r-priske-z_MwDqdYFLU-unsplash.jpg",
                  specialties: [
                    "Chinese teapots",
                    "Woodworking",
                    "Reusable household items"
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Divider divider() {
    return const Divider(
      indent: 8.0,
      endIndent: 8.0,
      height: 32,
    );
  }
}
