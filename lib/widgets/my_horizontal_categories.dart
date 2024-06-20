// import 'package:flutter/material.dart';
// import 'package:test_programm/buttons/categoryButton.dart';
// import 'package:test_programm/view/AsianKitchen/asian_kitchen.dart';

// Color inactiveColor = Color.fromRGBO(248, 247, 245, 1);
// Color activeColor = Colors.blue;

// class MyHorizontalList extends StatefulWidget {
//   MyHorizontalList({
//     super.key,
//   });

//   @override
//   State<MyHorizontalList> createState() => _MyHorizontalListState();
// }

// class _MyHorizontalListState extends State<MyHorizontalList> {
//   Color white_color = inactiveColor;

//   Color blue_color = activeColor;

//   @override
//   Widget build(BuildContext context) {
//     return Transform.translate(
//       offset: const Offset(12.0, 0.0),
//       child: Container(
//         height: 60,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             CategoryButton(
//               text: "Все меню",
//               color: white_color,
//               onTap: () {
//                 setState(() {});
//                 // blue_color = inactiveColor;
//               },
//             ),
//             CategoryButton(
//               text: "Салаты",
//               color: white_color,
//               onTap: () {
//                 setState(() {});
//               },
//             ),
//             CategoryButton(text: "С рисом", color: white_color, onTap: () {}),
//             CategoryButton(text: "С рыбой", color: white_color, onTap: () {}),
//             CategoryButton(text: "С рыбой", color: white_color, onTap: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:test_programm/buttons/categoryButton.dart';
import 'package:test_programm/view/marketView/marketplacePage.dart';

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
  // Создаем список состояний для каждой кнопки
  List<Color> buttonColors = List.generate(5, (index) => inactiveColor);

  // Создаем список названий для кнопок
  List<String> buttonTitles = [
    "Планшеты",
    "Телефоны",
    "Ноутбуки",
    "Наушники",
    "Камеры",
  ];

  // Создаем список элементов, которые соответствуют кнопкам
  List<String> items = [
    "Планшеты",
    "Телефоны",
    "Ноутбуки",
    "Наушники",
    "Камеры",
  ];

  // Текущий выбранный элемент
  String selectedItem = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(12.0, 0.0),
          child: Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (int index = 0; index < 5; index++)
                  CategoryButton(
                    text: buttonTitles[index],
                    color: buttonColors[index],
                    onTap: () {
                      setState(() {
                        // Сбрасываем все кнопки к обычному цвету
                        for (int i = 0; i < buttonColors.length; i++) {
                          buttonColors[i] = inactiveColor;
                        }
                        // Устанавливаем текущую кнопку в активный цвет
                        buttonColors[index] = activeColor;
                        // Обновляем выбранный элемент
                        selectedItem = items[index];
                      });
                    },
                  ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        // Отображаем выбранный элемент
        Text(
          "Выбранный элемент: $selectedItem",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
