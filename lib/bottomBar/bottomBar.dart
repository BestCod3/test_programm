import 'package:flutter/material.dart';
import 'package:test_programm/bottomBar/icons.bottomBar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey, width: 1))),
      height: MediaQuery.of(context).size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconBottom(
            icony: const Icon(Icons.home_rounded),
            text: 'Главная',
          ),
          IconBottom(icony: const Icon(Icons.search), text: 'Поиск'),
          IconBottom(icony: const Icon(Icons.shopping_cart), text: 'Корзина'),
          IconBottom(
              icony: const Icon(Icons.account_circle_outlined),
              text: 'Аккаунт'),
        ],
      ),
    );
  }
}
