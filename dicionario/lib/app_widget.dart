import 'package:dicionario/Dicionario/Home/View/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "Dicionario",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
