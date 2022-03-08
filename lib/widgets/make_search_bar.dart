import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppBar makeSearchBar(BuildContext context) {
  var t = AppLocalizations.of(context)!;

  return AppBar(
    elevation: 0,
    title: Container(
      width: double.infinity,
      height: 40,
      color: Colors.white,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: t.searchPlaceholder,
              suffixIcon: const Icon(Icons.search),
              contentPadding: const EdgeInsets.all(8.0)),
        ),
      ),
    ),
  );
}
