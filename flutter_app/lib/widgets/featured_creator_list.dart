import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/creator_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeaturedCreatorList extends StatelessWidget {
  const FeaturedCreatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              t.featuredCreators,
              style: theme.textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CreatorCard(
                  name: t.halaMahmoud,
                  profileImage: "lorem-face-6536.jpg",
                  productImage1: "asiya-kiev-gUzOZaswagA-unsplash.jpg",
                  productImage2: "jacob-bentzinger-USy_fK9s9hA-unsplash.jpg",
                  specialties: [
                    t.morrocanLeather,
                    t.belts,
                    t.wallets,
                  ],
                ),
                divider(),
                CreatorCard(
                  name: t.danielGarcia,
                  profileImage: "lorem-face-4343.jpg",
                  productImage1: "max-bohme-ND477oBF3i4-unsplash.jpg",
                  productImage2: "thomas-john-9dZAGDv-FxU-unsplash.jpg",
                  specialties: [
                    t.dayOfDeadSculptures,
                    t.ceramicSculptures,
                  ],
                ),
                divider(),
                CreatorCard(
                  name: t.maryShayk,
                  profileImage: "lorem-face-4999.jpg",
                  productImage1: "eugenia-romanova-cJnwJxXABiY-unsplash.jpg",
                  productImage2: "denis-kirichkov-5h12h1Vwzr0-unsplash.jpg",
                  specialties: [t.woodenArt, t.intricateWoodworking, t.facades],
                ),
                divider(),
                CreatorCard(
                  name: t.ruiYang,
                  profileImage: "lorem-face-1140.jpg",
                  productImage1: "jay-huang-7c4lkKgnOko-unsplash.jpg",
                  productImage2: "pille-r-priske-z_MwDqdYFLU-unsplash.jpg",
                  specialties: [
                    t.chineseTeapots,
                    t.woodworking,
                    t.resuableHouseholdItems,
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
