import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      backgroundColor: Colors.transparent,
      selectedBackgroundColor: Colors.indigo,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      onTap: (int val) {
        setState(() {
          _index = val;
        });
      },
      currentIndex: _index,
      items: [
        FloatingNavbarItem(
          icon: Icons.home_rounded,
          title: 'Главная',
        ),
        FloatingNavbarItem(
          icon: Icons.search,
          title: 'Поиск',
        ),
        FloatingNavbarItem(
          icon: Icons.shopping_cart,
          title: 'Корзина',
        ),
        FloatingNavbarItem(
          icon: Icons.account_circle_outlined,
          title: 'Аккаунт',
        ),
      ],
    );
  }
}
