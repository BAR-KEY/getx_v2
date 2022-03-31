import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('screen four')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('screen four'),
          Text(Get.arguments),
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로가기'))
        ],
      )),
    );
  }
}
