import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_v2/src/screenfour.dart';
import 'package:getx_v2/src/screenthree.dart';
import 'package:getx_v2/src/screentwo.dart';

class GetxNavigation extends StatefulWidget {
  const GetxNavigation({Key? key}) : super(key: key);

  @override
  State<GetxNavigation> createState() => _GetxNavigationState();
}

var returnVal;

class _GetxNavigationState extends State<GetxNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Getx Navigation')),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(const ScreenTwo());
                    },
                    child: const Text('Screen Two 이동')),
                ElevatedButton(
                    onPressed: () {
                      Get.off(const ScreenTwo());
                    },
                    child: const Text('전 페이지로 돌아가지 못하게 하기')),
                ElevatedButton(
                    onPressed: () {
                      Get.offAll(const ScreenTwo());
                    },
                    child: const Text('모든 페이지 스택 삭제하기')),
                Text('리턴값 : $returnVal'),
                ElevatedButton(
                    onPressed: () async {
                      final resp = await Get.to(const ScreenThree());

                      setState(() {
                        returnVal = resp;
                      });
                    },
                    child: const Text('리턴값 받아오기')),
                ElevatedButton(
                    onPressed: () {
                      Get.to(const ScreenFour(), arguments: '야근해요~');
                    },
                    child: const Text('아규먼트 보내기')),
                ElevatedButton(
                    onPressed: () {
                      Get.to(const ScreenTwo(), transition: Transition.fadeIn);
                    },
                    child: const Text('트랜지션')),
                ElevatedButton(onPressed: () {}, child: const Text('네임드 라우트')),
                ElevatedButton(onPressed: () {}, child: const Text('Snackbar')),
                ElevatedButton(onPressed: () {}, child: const Text('Dialog')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Bottom Sheet')),
              ],
            ),
          ),
        ));
  }
}
