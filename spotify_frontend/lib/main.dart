import 'package:flutter/material.dart';
import 'package:spotify_frontend/core/theme/theme.dart';
import 'package:spotify_frontend/features/auth/view/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
    );
  }
}
