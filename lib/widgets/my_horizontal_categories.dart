import 'package:flutter/material.dart';
import 'package:test_programm/buttons/categoryButton.dart';
import 'package:test_programm/view/AsianKitchen/asian_kitchen.dart';

Color inactiveColor = Color.fromRGBO(248, 247, 245, 1);
Color activeColor = Colors.blue;

class MyHorizontalList extends StatefulWidget {
  MyHorizontalList({
    super.key,
  });

  @override
  State<MyHorizontalList> createState() => _MyHorizontalListState();
}

class _MyHorizontalListState extends State<MyHorizontalList> {
  Color white_color = inactiveColor;

  Color blue_color = activeColor;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(12.0, 0.0),
      child: Container(
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CategoryButton(
              text: "Все меню",
              color: white_color,
              onTap: () {
                setState(() {});
                white_color = activeColor;
                blue_color = inactiveColor;
              },
            ),
            CategoryButton(
              text: "Салаты",
              color: white_color,
              onTap: () {
                setState(() {});
              },
            ),
            CategoryButton(text: "С рисом", color: white_color, onTap: () {}),
            CategoryButton(text: "С рыбой", color: white_color, onTap: () {}),
            CategoryButton(text: "С рыбой", color: white_color, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
