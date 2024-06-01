import 'package:flutter/material.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:test_programm/view/AsianKitchen/AppBar.dart';
import 'package:test_programm/view/ProductDetails/product_details_page.dart';

import '../HeadView/head_view_widgets.dart';

class CartPage extends StatefulWidget {
  final Cart cart;

  CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currentindex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FullAppBar(height: 80, text: 'Корзина'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.items.length,
              itemBuilder: (context, index) {
                final product = widget.cart.items[index];
                return ListTile(
                  leading: Image.network(
                    product.imageUrl,
                    width: 100,
                    height: 100,
                  ),
                  title: Text(product.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.text1),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              // Уменьшаем количество товара в корзине и обновляем интерфейс
                              widget.cart.decrementQuantity(index);
                              setState(() {});
                            },
                          ),
                          Text(product.quantity.toString()),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Увеличиваем количество товара в корзине и обновляем интерфейс
                              widget.cart.incrementQuantity(index);
                              setState(() {});
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              // Удаляем товар из корзины по его индексу и обновляем интерфейс
                              widget.cart.removeFromCart(index);
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Общая сумма:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  '${widget.cart.totalPrice().toStringAsFixed(2)} \som',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: 2,
        onTap: (value) {},
      ),
    );
  }
}
