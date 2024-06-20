import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_programm/view/HeadView/HeadView.dart';
import 'package:test_programm/view/HomeView/homeView.dart';
import 'package:test_programm/view/LandingView/landing_view.dart';
import 'package:test_programm/view/ProductDetails/cart_page.dart';
import 'package:test_programm/view/Profile/profile.dart';

import 'firebase_options.dart';
import 'view/HeadView/head_view_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Main());
}

class Main extends StatelessWidget {
  final cart = Cart(); // Создайте объект cart

  Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingView(),
      routes: {
        '/home': (context) => const HeadView(), //Главная
        '/search': (context) => HomeView(),

        '/cart': (context) =>
            CartPage(cart: cart), // Передайте объект cart в CartPage
        '/profile': (context) => const Profile(), //Профиль
      },
    );
  }
}
