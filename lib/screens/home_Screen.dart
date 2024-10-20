import 'package:flutter/material.dart';
import 'package:mg_match_color/screens/tabs/home_tab.dart';
import 'package:mg_match_color/screens/tabs/settings_tab.dart';
import 'package:mg_match_color/widgets/cusrom_floating_action_button.dart';
import 'package:mg_match_color/widgets/custom_bottom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = const [HomeTab(), SettingsTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: index,
        onTab: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: tabs[index],
    );
  }
}
