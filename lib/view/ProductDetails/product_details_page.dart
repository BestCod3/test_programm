// import 'package:flutter/material.dart';
// import 'package:test_programm/view/AsianKitchen/AppBar.dart';
// import 'package:test_programm/view/ProductDetails/cart_page.dart';

// // Класс товара
// class Product {
//   final String name;
//   final String text1;
//   final String imageUrl;
//   int quantity;

//   Product({
//     required this.name,
//     required this.text1,
//     required this.imageUrl,
//     this.quantity = 1,
//   });
// }

// // Класс корзины
// class Cart extends ChangeNotifier {
//   final List<Product> _items = [];

//   List<Product> get items => _items;

//   void addToCart(Product product) {
//     _items.add(product);
//     notifyListeners(); // Уведомляем слушателей о изменении состояния
//   }

//   void removeFromCart(int index) {
//     _items.removeAt(index);
//     notifyListeners(); // Уведомляем слушателей о изменении состояния
//   }

//   void incrementQuantity(int index) {
//     _items[index].quantity++;
//     notifyListeners(); // Уведомляем слушателей о изменении состояния
//   }

//   void decrementQuantity(int index) {
//     if (_items[index].quantity > 1) {
//       _items[index].quantity--;
//       notifyListeners(); // Уведомляем слушателей о изменении состояния
//     }
//   }
// }

// class ProductDetailsPage extends StatelessWidget {
//   final Cart cart;

//   ProductDetailsPage({
//     Key? key,
//     required this.cart,
//     required this.imageUrl,
//     required this.text,
//     required this.text1,
//     required this.fulltext,
//   }) : super(key: key);

//   final String imageUrl;
//   final String text;
//   final String text1;
//   final String fulltext;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const FullAppBar(height: 80, text: 'Маркетплейс'),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Image.network(imageUrl),
//             const SizedBox(height: 16),
//             Text(
//               text,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               text1,
//               style: const TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w400,
//                 color: Color(0xff828796),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               fulltext,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 final Product product = Product(
//                   name: text,
//                   text1: text1,
//                   imageUrl: imageUrl,
//                   quantity: 1,
//                 );
//                 cart.addToCart(product);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => CartPage(cart: cart)),
//                 );
//               },
//               child: const Text('Добавить в корзину'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
