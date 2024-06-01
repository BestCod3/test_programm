import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomBar extends StatefulWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  const BottomBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: _buildNavBarItem(Icons.home_rounded, 'Главная', 0)),
          Expanded(child: _buildNavBarItem(Icons.search, 'Поиск', 1)),
          Expanded(child: _buildNavBarItem(Icons.shopping_cart, 'Корзина', 2)),
          Expanded(
              child: _buildNavBarItem(
                  Icons.account_circle_outlined, 'Профиль', 3)),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/search');
            break;
          case 2:
            Navigator.pushNamed(context, '/cart');
            break;
          case 3:
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: widget.currentIndex == index ? Colors.indigo : Colors.grey,
            size: 24,
          ),
          Text(
            label,
            style: TextStyle(
              color: widget.currentIndex == index ? Colors.indigo : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
