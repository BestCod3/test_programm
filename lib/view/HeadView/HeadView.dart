import 'package:flutter/material.dart';
import 'package:test_programm/appBar/customAppBar.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:test_programm/data/horizontal_list.dart';
import 'package:test_programm/data/product.dart';
import 'package:test_programm/view/HeadView/head_view_widgets.dart';

class HeadView extends StatefulWidget {
  const HeadView({Key? key}) : super(key: key);

  @override
  _HeadViewState createState() => _HeadViewState();
}

class _HeadViewState extends State<HeadView> {
  String? selectedCategory; // Сохраняем выбранную категорию

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80),
      body: Column(
        children: [
          const HeadViewWidget(),
          SizedBox(
            height: 45, // Задайте нужную высоту
            child: HorizontalProductList(
              onCategorySelected: (category) {
                setState(() {
                  selectedCategory = category; // Обновляем выбранную категорию
                });
              },
              selectedCategory: selectedCategory,
            ),
          ),
          Expanded(
            child: selectedCategory != null
                ? ProductList(
                    category: selectedCategory,
                    cart: Cart(),
                  )
                : Container(),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(onTap: (value) {}, currentIndex: 0),
    );
  }
}
