import 'package:flutter/material.dart';
import 'package:persistencia_dados/features/produtos/pages/crud_page.dart';
import 'package:persistencia_dados/welcome/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PeF Pratication',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        buttonColor: Colors.blue.shade500
      ),
      home: WelcomePage(),
    );
  }
}

