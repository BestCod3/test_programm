import 'package:flutter/material.dart';

class FullAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FullAppBar({super.key, required this.height, required this.text});
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.account_circle_sharp,
              size: 45,
              color: Colors.black54,
            ),
          )
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
