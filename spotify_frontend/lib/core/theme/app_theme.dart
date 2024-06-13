import 'package:flutter/material.dart';
import 'package:spotify_frontend/core/theme/theme.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColor.borderColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColor.gradient2,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: const EdgeInsets.all(24),
    ),
  );
}
