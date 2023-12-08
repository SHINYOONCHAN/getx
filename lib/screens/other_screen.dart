import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  OtherScreenState createState() => OtherScreenState();
}

class OtherScreenState extends State<OtherScreen> {
  final CounterController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 뒤로가기 아이콘 추가
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
