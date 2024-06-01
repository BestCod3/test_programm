import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  RegisterWidget({required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }
}

class SignWith extends StatelessWidget {
  const SignWith({Key? key, required this.image}) : super(key: key);
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 1),
                    blurRadius: 2.0),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: image,
            ),
          ),
        ),
      ],
    );
  }
}

class OrSign extends StatelessWidget {
  const OrSign(
      {Key? key, required this.text, required this.text1, required this.onTap});
  final String text;
  final String text1;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          text1,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(
              color: Colors.white,
              height: 36,
              thickness: 1,
            )),
      ),
    ]);
  }
}

const registerDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  hintText: 'Name',
  hintStyle: TextStyle(color: Colors.blueGrey),
);
