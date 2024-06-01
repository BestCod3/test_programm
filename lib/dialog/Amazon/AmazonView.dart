import 'package:flutter/material.dart';
import 'package:test_programm/appBar/customAppBar.dart';
import 'package:test_programm/bottomBar/bottomBar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AmazonView extends StatelessWidget {
  AmazonView({Key? key, required this.initialUrl}) : super(key: key);
  String initialUrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(height: 80),
        body: WebView(
          initialUrl: initialUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        bottomNavigationBar: BottomBar(
          currentIndex: 5,
          onTap: (index) {},
        ),
      ),
    );
  }
}
