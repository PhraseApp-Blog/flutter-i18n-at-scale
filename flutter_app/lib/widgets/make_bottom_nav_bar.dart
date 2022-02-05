import 'package:flutter/material.dart';

BottomNavigationBar makeBottomNavBar(BuildContext context) {
  var theme = Theme.of(context);

  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: theme.primaryColorDark,
    selectedFontSize: 13,
    unselectedFontSize: 13,
    items: const [
      BottomNavigationBarItem(
        label: "Featured",
        icon: Icon(Icons.star),
      ),
      BottomNavigationBarItem(
        label: "Search",
        icon: Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        label: "Cart",
        icon: Icon(Icons.shopping_cart),
      ),
      BottomNavigationBarItem(
        label: "Account",
        icon: Icon(Icons.account_circle),
      ),
    ],
  );
}
