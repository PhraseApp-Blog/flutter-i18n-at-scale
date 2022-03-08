import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

BottomNavigationBar makeBottomNavBar(BuildContext context) {
  var theme = Theme.of(context);
  var t = AppLocalizations.of(context)!;

  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: theme.primaryColorDark,
    selectedFontSize: 13,
    unselectedFontSize: 13,
    items: [
      BottomNavigationBarItem(
        label: t.featured,
        icon: const Icon(Icons.star),
      ),
      BottomNavigationBarItem(
        label: t.search,
        icon: const Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        label: t.cart,
        icon: const Icon(Icons.shopping_cart),
      ),
      BottomNavigationBarItem(
        label: t.account,
        icon: const Icon(Icons.account_circle),
      ),
    ],
  );
}
