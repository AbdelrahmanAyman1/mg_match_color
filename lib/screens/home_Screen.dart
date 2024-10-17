import 'package:flutter/material.dart';
import 'package:mg_match_color/widgets/custom_bottom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomBottomAppBar());
  }
}
