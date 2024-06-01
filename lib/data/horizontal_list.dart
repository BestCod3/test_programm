import 'package:test_programm/data/product.dart';

class HorizontalList {
  Map<String, List<Product>> list;
  HorizontalList({required this.list});
  static HorizontalList generatedList() {
    return HorizontalList(list: {
      'Телефоны': Product.generatePhoneProduct(),
      'Наушники': Product.generateHeadphoneProduct()!,
      'Телевизоры': Product.generateTVProduct()!
    });
  }
}
