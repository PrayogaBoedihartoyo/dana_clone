import 'package:dana_clone/pages/main_page.dart';
import 'package:dana_clone/providers/bottom_navigation_provider.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: MaterialApp(
        title: 'Dana Clone',
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          defaultScale: true,
        ),
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const MainPage(),
      ),
    );
  }
}
