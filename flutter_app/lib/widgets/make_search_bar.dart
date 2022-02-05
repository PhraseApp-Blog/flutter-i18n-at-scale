import 'package:flutter/material.dart';

AppBar makeSearchBar() {
  return AppBar(
    title: Container(
      width: double.infinity,
      height: 40,
      color: Colors.white,
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Find creator or product",
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(8.0)),
        ),
      ),
    ),
  );
}
