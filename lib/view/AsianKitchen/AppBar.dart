import 'package:flutter/material.dart';

class Asian_kitchen_appbar extends StatelessWidget
    implements PreferredSizeWidget {
  const Asian_kitchen_appbar({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            "Азиатская кухня",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [Image.asset('assets/images/logo.png')],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
