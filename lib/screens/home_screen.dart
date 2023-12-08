import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/Item_controller.dart';
import 'package:getx/screens/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GetX Example"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () => Get.to(const FavoritePage()),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          int number = index + 1;
          return ListTile(
            title: Text('리스트 $number'),
            trailing: Obx(() {
              bool isFavorite = favoriteController.favorites.contains(number);
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  favoriteController.toggleFavorite(number);
                },
              );
            }),
            onTap: () {
              Get.to(FavoritePage());
            },
          );
        },
      ),
    );
  }
}
