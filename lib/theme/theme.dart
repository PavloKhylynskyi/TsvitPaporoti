import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';

abstract class AppTheme {
  static final light = ThemeData(
    primaryColor: kPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
  static final dark = ThemeData();
}
