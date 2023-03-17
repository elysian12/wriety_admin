import 'package:flutter/material.dart';
import 'package:wriety_admin/screens/login_screen.dart';

import 'common/constants/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wriety Admin',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const LoginSceeen(),
    );
  }
}
