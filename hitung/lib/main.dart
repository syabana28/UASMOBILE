import 'package:flutter/material.dart';
import 'package:hitung/HomePage.dart';
import 'package:hitung/Lingkaran.dart';
import 'package:hitung/Persegi.dart';
import 'package:hitung/ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(routes: <String, WidgetBuilder>{
      '/': (context) => const HomePage(),
      '/PersegiPage': (context) => const PersegiPage(),
      '/LingkaranPage': (context) => const LingkaranPage(),
      '/ProfilPage': (context) => const CardProfile(),
    });
  }
}
