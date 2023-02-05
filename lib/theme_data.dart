import "package:flutter/material.dart";

final themeData = ThemeData(
  // useMaterial3: true,
  listTileTheme: const ListTileThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))),
    style: ListTileStyle.list,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),
  ),
);
