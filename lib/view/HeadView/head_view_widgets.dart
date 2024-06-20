import 'package:flutter/material.dart';
import 'package:test_programm/data/horizontal_list.dart';
import 'package:test_programm/view/HeadView/purchasePage.dart';
import '../../data/product.dart';
import '../marketView/AppBar.dart';
import '../ProductDetails/cart_page.dart';

class HeadViewWidget extends StatelessWidget {
  const HeadViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Маркетплейс",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Представляет собой оптимизированную\nонлайн-платформу по предоставлению\nпродуктов и услуг.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Marketplace_Logo.png/1200px-Marketplace_Logo.png',
                width: 110,
                height: 140,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalProductList extends StatefulWidget {
  final Function(String) onCategorySelected;
  final String? selectedCategory;
  const HorizontalProductList(
      {Key? key, required this.onCategorySelected, this.selectedCategory})
      : super(key: key);

  @override
  _HorizontalProductListState createState() => _HorizontalProductListState();
}

class _HorizontalProductListState extends State<HorizontalProductList> {
  late HorizontalList _horizontalList;

  @override
  void initState() {
    super.initState();
    _horizontalList = HorizontalList.generatedList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Высота контейнера для прокрутки
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCategoryItem('Телефоны'),
          buildCategoryItem('Наушники'),
          buildCategoryItem('Телевизоры'),
        ],
      ),
    );
  }

  Widget buildCategoryItem(String category) {
    bool isSelected = category == widget.selectedCategory;
    return GestureDetector(
      onTap: () {
        widget.onCategorySelected(category);
      },
      child: Container(
        height: 50, // Высота элемента
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade200 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          border: isSelected ? Border.all(color: Colors.blue, width: 0) : null,
        ),
        alignment: Alignment.center,
        child: Text(
          category,
          style: TextStyle(
            fontSize: 16.0,
            color: isSelected ? Colors.blue : Colors.black,
          ),
        ),
      ),
    );
  }
}

class Product_main {
  final String name;
  final String text1;
  final String imageUrl;
  int quantity;

  Product_main({
    required this.name,
    required this.text1,
    required this.imageUrl,
    this.quantity = 1,
  });
}

class Cart extends ChangeNotifier {
  final List<Product_main> _items = [];

  List<Product_main> get items => _items;

  void addToCart(Product_main product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void incrementQuantity(int index) {
    _items[index].quantity++;
    notifyListeners();
  }

  void decrementQuantity(int index) {
    if (_items[index].quantity > 1) {
      _items[index].quantity--;
      notifyListeners();
    }
  }

  double totalPrice() {
    double total = 0.0;
    for (var item in _items) {
      // Удаление всех нечисловых символов перед преобразованием в double
      String priceString = item.text1.replaceAll(RegExp(r'[^0-9.]'), '');
      double price = double.tryParse(priceString) ?? 0.0;
      total += item.quantity * price;
    }
    return total;
  }
}

class ProductDetailsPage extends StatelessWidget {
  final Cart cart;

  ProductDetailsPage({
    Key? key,
    required this.cart,
    required this.imageUrl,
    required this.text,
    required this.text1,
    required this.fulltext,
  }) : super(key: key);

  final String imageUrl;
  final String text;
  final String text1;
  final String fulltext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FullAppBar(height: 80, text: 'Маркетплейс'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(imageUrl),
            const SizedBox(height: 16),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              text1,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff828796),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              fulltext,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final Product_main product = Product_main(
                      name: text,
                      text1: text1,
                      imageUrl: imageUrl,
                      quantity: 1,
                    );
                    cart.addToCart(product);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CartPage(cart: cart)),
                    );
                  },
                  child: const Text('Добавить в корзину'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PurchasePage(
                              product: Product_main(
                                  name: text,
                                  text1: text1,
                                  imageUrl: imageUrl))),
                    );
                  },
                  child: const Text('Купить сейчас'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatefulWidget {
  final String? category;
  final Cart cart;
  const ProductList({Key? key, required this.category, required this.cart})
      : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product>? products;

  @override
  void initState() {
    super.initState();
    // Инициализация списка продуктов при создании виджета
    products = getProductListByCategory(widget.category ?? '');
  }

  @override
  void didUpdateWidget(ProductList oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Обновление списка продуктов при изменении выбранной категории
    if (widget.category != oldWidget.category) {
      setState(() {
        products = getProductListByCategory(widget.category ?? '');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products?.length ?? 0,
      itemBuilder: (context, index) {
        Product product = products![index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(
                  imageUrl: product.imgUrl,
                  text: product.name,
                  text1: product.price,
                  fulltext: product.desc, // просто для примера
                  cart: Cart(), // передаем пустую корзину
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: Center(
                child: ListTile(
                  leading: Image.network(
                    product.imgUrl ?? '',
                  ),
                  title: Text(
                    product.name ?? '',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    product.price ?? '',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Логика получения списка продуктов по категории
  List<Product>? getProductListByCategory(String category) {
    switch (category) {
      case 'Телефоны':
        return Product.generatePhoneProduct();
      case 'Наушники':
        return Product.generateHeadphoneProduct();
      case 'Телевизоры':
        return Product.generateTVProduct();
      default:
        return null;
    }
  }
}
