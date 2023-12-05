import 'package:flutter/material.dart';
import 'package:test_programm/buttons/categoryButton.dart';
import 'package:test_programm/view/AsianKitchen/asian_kitchen.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(12.0, 0.0),
      child: Container(
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            CategoryButton(
              text: "Все меню",
            ),
            CategoryButton(text: "Салаты"),
            CategoryButton(text: "С рисом"),
            CategoryButton(text: "С рыбой"),
            CategoryButton(text: "С рыбой"),
          ],
        ),
      ),
    );
  }
}
