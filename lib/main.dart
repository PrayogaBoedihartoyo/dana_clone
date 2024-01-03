import 'package:dana_clone/pages/home_page.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return MaterialApp(
      title: 'Dana Clone',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: true,
      ),
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HomePage(),
    );
  }
}
