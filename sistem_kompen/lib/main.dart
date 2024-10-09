import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'package:sistem_kompen/pages/sidebar_mahasiswa.dart';
import 'package:sistem_kompen/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Kompen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginMyApp(),
    );
  }
}
