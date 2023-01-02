import 'package:flutter/material.dart';
import 'package:recipes/screen/categoryListScreen.dart';
import 'package:recipes/screen/principalScreen.dart';
import 'package:recipes/screen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/principal': (context) => const PrincipalScreen(),
        CategoryList.routeName: (context) => const CategoryList(),
        // '/categoryList': (context) => const CategoryList()
      },
    );
  }
}
