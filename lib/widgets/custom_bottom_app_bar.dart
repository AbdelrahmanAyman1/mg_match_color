import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
    required this.currentIndex,
    required this.onTab,
  });
  final int currentIndex;
  final void Function(int) onTab;
  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Color(0xff281066),
      child: SingleChildScrollView(
        child: BottomNavigationBar(
          enableFeedback: false,
          currentIndex: widget.currentIndex,
          selectedItemColor: Color(0xfffbd992),
          unselectedItemColor: Colors.grey,
          onTap: widget.onTab,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list_rounded, size: 35), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_suggest_rounded,
                  size: 35,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
