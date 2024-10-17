import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Color(0xff281066),
      child: SingleChildScrollView(
        child: BottomNavigationBar(
          enableFeedback: false,
          currentIndex: currentIndex,
          selectedItemColor: Color(0xfffbd992),
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded, size: 35), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_suggest_outlined,
                  size: 35,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
