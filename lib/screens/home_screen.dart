import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';
import 'package:getx/screens/other_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Count: ${c.count}")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: c.increment,
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(const OtherScreen()),
              child: const Text('other'),
            ),
          ],
        ),
      ),
    );
  }
}
