import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(eccentricity: 1.0),
      backgroundColor: const Color(0xfffbd992),
      onPressed: () {},
      child: const Icon(Icons.add, color: Color(0xff281066), size: 20),
    );
  }
}
