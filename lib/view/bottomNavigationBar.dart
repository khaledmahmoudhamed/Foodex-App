import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  final Color selectedItemColor;
  final Color unSelectedItemColor;
  final int currentIndex;
  final VoidCallback onTap;
  final Widget child;
  final BottomNavigationBarItem item;

  const BottomNavigationBar(
      {Key? key,
      required this.selectedItemColor,
      required this.unSelectedItemColor,
      required this.currentIndex,
      required this.onTap,
      required this.child,
      required this.item,
      required BottomNavigationBarItem items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: item,
      selectedItemColor: selectedItemColor,
      unSelectedItemColor: unSelectedItemColor,
      currentIndex: currentIndex,
      onTap: () {},
      item: item,
      child: child,
    );
  }
}
