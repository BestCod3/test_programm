import 'package:flutter/material.dart';
import 'package:test_programm/appBar/customAppBar.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:test_programm/view/AsianKitchen/AppBar.dart';
import 'package:test_programm/widgets/my_horizontal_categories.dart';

import '../../widgets/listMenu.dart';

class AsianKitchen extends StatelessWidget {
  const AsianKitchen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Asian_kitchen_appbar(
        height: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyHorizontalList(),
            listMenu(
              image: "assets/images/Frame 583.png",
              text: "\nРис с овощами",
              ontap: () {
                Dish_infor();
              },
              image1: "assets/images/Frame 584.png",
              text1: "Салат по \nвосточному",
              ontap1: () {},
              image2: "assets/images/Frame 585.png",
              text2: "Рыба с овощами \nи рисом",
              ontap2: () {},
            ),
            listMenu(
                image: "assets/images/Frame 586.png",
                ontap: () {},
                image1: "assets/images/Frame 587.png",
                ontap1: () {},
                image2: "assets/images/Frame 588.png",
                ontap2: () {},
                text: "Тортеллини",
                text1: "Зеленый салат",
                text2: "Рулеты из \nветчины"),
            listMenu(
              ontap: () {},
              image: "assets/images/Frame 583.png",
              text: "\nРис с овощами",
              image1: "assets/images/Frame 584.png",
              text1: "Салат по \nвосточному",
              ontap1: () {},
              image2: "assets/images/Frame 585.png",
              text2: "Рыба с овощами \nи рисом",
              ontap2: () {},
            ),
            listMenu(
                ontap: () {},
                image: "assets/images/Frame 586.png",
                image1: "assets/images/Frame 587.png",
                ontap1: () {},
                image2: "assets/images/Frame 588.png",
                ontap2: () {},
                text: "Тортеллини",
                text1: "Зеленый салат",
                text2: "Рулеты из \nветчины"),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     CategoryB
      // utton(
      //       text: "Все меню",
      //     ),
      //     SizedBox(
      //       width: 50,
      //     ),
      //     CategoryButton(text: "Салаты"),
      //     CategoryButton(text: "С рисом"),
      //     CategoryButton(text: "С рыбой"),
      //   ],
      // ),//для примера
    );
  }
}

class Dish_infor extends StatelessWidget {
  const Dish_infor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Image.asset("name"),
      title: Text("data"),
    );
  }
}
