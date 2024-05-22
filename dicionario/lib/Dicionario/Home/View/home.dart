import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _availableChoices = [
      'Word list',
      'History',
      'Favorites',
    ];

    return Scaffold(
      body: SizedBox.expand(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
