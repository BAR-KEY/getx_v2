import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  var radioVal;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('screen Three')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('screen Three'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 0,
                  groupValue: radioVal,
                  onChanged: (value) {
                    setState(() {
                      radioVal = value;
                    });
                  }),
              const Text('0')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 1,
                  groupValue: radioVal,
                  onChanged: (value) {
                    setState(() {
                      radioVal = value;
                    });
                  }),
              const Text('1')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 2,
                  groupValue: radioVal,
                  onChanged: (value) {
                    setState(() {
                      radioVal = value;
                    });
                  }),
              const Text('2')
            ],
          ),
          TextButton(
              onPressed: () {
                Get.back(result: radioVal);
              },
              child: const Text('뒤로가기'))
        ],
      )),
    );
  }
}
