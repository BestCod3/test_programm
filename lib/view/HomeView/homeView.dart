import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_programm/dialog/Amazon/card.dart';
import 'package:test_programm/dialog/citrus/citrus_dialog.dart';
import 'package:test_programm/dialog/rozetka/rozetka.dart';
import 'package:test_programm/dialog/zappos/zappos.dart';
import 'package:test_programm/view/marketView/marketplacePage.dart';
import '../../appBar/customAppBar.dart';
import '../../bottomBar/bottomBar.dart';
import '../../widgets/categories.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // BottomController _bottomController = Get.put(BottomController());

  String homeText = '';
  int _currentindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(height: 80),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Categories(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog();
                    },
                  );
                },
                text: "",
                urlImage:
                    'https://static.vecteezy.com/system/resources/previews/019/766/240/original/amazon-logo-amazon-icon-transparent-free-png.png'),
            Categories(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CitrusDialog();
                    },
                  );
                },
                text: "",
                urlImage:
                    'https://i.citrus.world/uploads/news/2022/june/my-otsekli-nenuzhnoe/untitled-1.png?_t=1642425577'),
            Categories(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return RozetkaDialog();
                    },
                  );
                },
                text: "",
                urlImage:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/ROZETKA-Logo-L3-B-RGB.png/1200px-ROZETKA-Logo-L3-B-RGB.png'),
            Categories(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ZapposDialog();
                    },
                  );
                },
                text: "",
                urlImage:
                    'https://asset.brandfetch.io/id5gOybDIq/ideSdRSe6Z.png'),
            Categories(
                text: "",
                urlImage:
                    'https://jointcenter.org/wp-content/uploads/2018/12/marketplace-logo.jpg',
                onPressed: () {
                  Get.to(const MarketplaceView());
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: _currentindex,
        onTap: (index) {
          setState(() {
            _currentindex = index;
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
          });
        },
      ),
    );
  }
}
