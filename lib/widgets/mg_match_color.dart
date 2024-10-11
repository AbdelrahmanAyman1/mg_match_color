import 'package:flutter/material.dart';
import 'package:mg_match_color/screens/home_Screen.dart';

class MgMatchColor extends StatelessWidget {
  const MgMatchColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
