import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/appBar/customAppBar.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:test_programm/view/AsianKitchen/AppBar.dart';
import 'package:test_programm/view/SignUp/controller.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = Get.put(SignUpController());

  @override
  void initState() {
    super.initState();
    controller
        .fetchUserName(); // Извлекаем имя пользователя при инициализации экрана профиля
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FullAppBar(height: 80, text: 'Профиль'),
      body: Column(
        children: [
          Obx(() => InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black54,
                      size: 60,
                    ),
                    Text(
                      controller.userName.value.isNotEmpty
                          ? controller.userName.value
                          : 'Загрузка...',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: 3,
        onTap: (index) {
          setState(() {});
        },
      ),
    );
  }
}
