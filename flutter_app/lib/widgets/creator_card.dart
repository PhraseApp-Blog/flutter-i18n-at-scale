import 'package:flutter/material.dart';

class CreatorCard extends StatelessWidget {
  final String name;
  final String profileImage;
  final String productImage1;
  final String productImage2;
  final List<String>? specialties;

  const CreatorCard({
    Key? key,
    this.name = '',
    this.profileImage = '',
    this.productImage1 = '',
    this.productImage2 = '',
    this.specialties,
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
                  "assets/img/$profileImage",
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0),
                child: Expanded(
                  child: Text(
                    name.toUpperCase(),
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
                          children:
                              specialties?.map((s) => Text("• $s")).toList() ??
                                  [],
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
                    "assets/img/$productImage1",
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
                    "assets/img/$productImage2",
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
