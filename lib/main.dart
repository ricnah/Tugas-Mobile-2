import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/detail_page.dart';
import 'pages/edit_page.dart';
import 'pages/navigation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const NavigationPage(), // ✅ Ganti ke NavigationPage
        '/about': (context) => const NavigationPage(),
        '/detail': (context) => const DetailPage(),
        '/edit': (context) => const EditPage(),
      },
    );
  }
}
