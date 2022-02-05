import 'package:flutter/material.dart';

class CreatorCard extends StatelessWidget {
  final String name;

  const CreatorCard({
    Key? key,
    this.name = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/img/lorem-face-330.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0),
                child: Expanded(
                  child: Text(
                    "Hasan Elsabry".toUpperCase(),
                    textAlign: TextAlign.start,
                    style: theme.textTheme.bodyText1,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: theme.primaryColorDark,
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                child: Text(
                  "Top Rated",
                  style: TextStyle(color: theme.colorScheme.onPrimary),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            "Specialties".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("• Leather"),
                            const Text("• Moroccan leather"),
                            const Text("• Belts"),
                            const Text("• Wallets"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                  child: Image.asset(
                    "assets/img/asiya-kiev-gUzOZaswagA-unsplash.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  child: Image.asset(
                    "assets/img/jacob-bentzinger-USy_fK9s9hA-unsplash.jpg",
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
