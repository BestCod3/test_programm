import 'package:flutter/material.dart';
import 'package:test_programm/view/HeadView/head_view_widgets.dart';

class PurchasePage extends StatefulWidget {
  final Product_main product;

  PurchasePage({required this.product});

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  String _paymentMethod = 'Visa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Информация о покупке'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Покупка: ${widget.product.name}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Цена: ${widget.product.text1}',
                style: const TextStyle(fontSize: 16, color: Colors.green)),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Имя',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Адрес',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Телефон',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Выберите способ оплаты',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Visa'),
              leading: Radio<String>(
                value: 'Visa',
                groupValue: _paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    _paymentMethod = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('QR-код'),
              leading: Radio<String>(
                value: 'QR',
                groupValue: _paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    _paymentMethod = value!;
                  });
                },
              ),
            ),
            if (_paymentMethod == 'Visa')
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Номер карты',
                  border: OutlineInputBorder(),
                ),
              ),
            if (_paymentMethod == 'QR')
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: 200,
                  color: Colors.grey.shade200,
                  child: const Center(
                    child: Text(
                      'QR-код для оплаты',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Покупка успешна!'),
                ));
                Navigator.pop(context);
              },
              child: const Text('Оформить заказ'),
            ),
          ],
        ),
      ),
    );
  }
}
