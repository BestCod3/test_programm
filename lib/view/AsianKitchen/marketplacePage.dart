import 'package:flutter/material.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:test_programm/view/AsianKitchen/AppBar.dart';
import 'package:test_programm/view/AsianKitchen/productCard_widgets.dart';
import 'package:test_programm/widgets/my_horizontal_categories.dart';
import '../../widgets/listMenu.dart';

class MarketplaceView extends StatelessWidget {
  const MarketplaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const FullAppBar(
          height: 80,
          text: "Маркетплейс",
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyHorizontalList(),
              listMenu(
                image:
                    "https://24.kg/thumbnails/37bba/6f67c/97099_w750_h_r.png",
                text: "\nSamsung s10",
                ontap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ProductCard(
                          text: "Samsung s10",
                          text1: "23500 som",
                          fulltext: '''Основная камера
16 Mp x 12 Mp x 12 Mp
Фронтальная камера
10 Mpx
Объем оперативной памяти
8 GB
Объем встроенной памяти
Емкость аккумулятора
3400 мА*ч
Тип матрицы
Dynamic AMOLED HDR10+''',
                          imageUrl:
                              'https://24.kg/thumbnails/37bba/6f67c/97099_w750_h_r.png');
                    },
                  );
                },
                image1:
                    "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544dad947b5e_39.png&w=256&q=75",
                text1: "SODO-1010",
                ontap1: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ProductCard(
                            imageUrl:
                                'https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544dad947b5e_39.png&w=256&q=75',
                            fulltext:
                                'Стильные наушники отличаются своими мощными басами и прекрасным звуком. Они изготовлены из пластика и высокопрочного алюминия. Совместимы со всеми современными смартфонами. Подключение осуществляется через Bluetooth. Радиус действия 10 метров. Не вызывают дискомфорта даже при длительном использовании. Мягкие амбушюры принимают форму ушей, благодаря чему обеспечивается надежная посадка гарнитуры. Беспроводные Bluetooth наушники обладают прекрасным шумоподавлением, что дарит возможность насладиться первоклассным звуком. Телескопическое оголовье изготовлено из прочного металла. Оно покрыто кожаным ободком, благодаря которому у вас останутся только приятные ощущения от использования наушников',
                            text: 'SODO-1010',
                            text1: '2300');
                      });
                },
                image2:
                    "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F654b6ad7b6313_42.png&w=256&q=75",
                text2: "Рыба с овощами \nи рисом",
                ontap2: () {},
              ),
              listMenu(
                  image:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65448c3f07ee4_frame-17.png&w=256&q=75",
                  ontap: () {},
                  image1:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65448ff27b74d_53.png&w=256&q=75",
                  ontap1: () {},
                  image2:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F65449027a0d9d_frame-19.png&w=256&q=75",
                  ontap2: () {},
                  text: "Тортеллини",
                  text1: "Зеленый салат",
                  text2: "Рулеты из \nветчины"),
              listMenu(
                ontap: () {},
                image:
                    "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F654490cbbb55e_frame-23.png&w=256&q=75",
                text: "\nРис с овощами",
                image1:
                    "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F656c566422b60_253.png&w=256&q=75",
                text1: "Салат по \nвосточному",
                ontap1: () {},
                image2:
                    "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F6544b3ea341b5_454.png&w=256&q=75",
                text2: "Рыба с овощами \nи рисом",
                ontap2: () {},
              ),
              listMenu(
                  ontap: () {},
                  image:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F654b464a0eb2c_78.png&w=256&q=75",
                  image1:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F654b0dc12b012_105.png&w=256&q=75",
                  ontap1: () {},
                  image2:
                      "https://stores.kg/_next/image?url=https%3A%2F%2Fdocs.stores.kg%2Fimages%2Fcategory_images%2F654b6ae0a5cc4_115.png&w=256&q=75",
                  ontap2: () {},
                  text: "Тортеллини",
                  text1: "Зеленый салат",
                  text2: "Рулеты из \nветчины"),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(onTap: (value) {}, currentIndex: 0));
  }
}
