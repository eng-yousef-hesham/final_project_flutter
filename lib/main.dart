import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submit/shared_screens/Login_Page.dart';
import '/themes/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Mode',
      theme: themeProvider.themeData, // Set the theme dynamically
      home: LoginPage(),
    );
  }
}
