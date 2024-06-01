import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/view/HomeView/homeController.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomAppBar({Key? key, required this.height});
  final HomeController _appBarController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Image.asset('assets/images/IconsAppbar.png'),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bishkek",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "${_appBarController.dateTime.value}",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.account_circle_sharp,
                    size: 45,
                    color: Colors.black54,
                  ),
                )),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
