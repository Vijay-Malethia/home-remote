import 'package:app_ui/screens/home_screen.dart';
import 'package:app_ui/screens/livingroom.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'app-ui',
    home: HomeScreen(),
    routes: {
      '/homeScreen': (context) => const HomeScreen(),
      '/livingroom': (context) => const LivingRoom(),
    },
  ));
}
