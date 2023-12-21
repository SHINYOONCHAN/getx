import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view_models/item_controller.dart';
import 'package:getx/views/favorite_screen.dart';
import '../models/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final FavoriteViewModel favoriteViewModel = Get.put(FavoriteViewModel());

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
          Item item = Item(index + 1); // Item 객체 생성
          return ListTile(
            title: Text('리스트 ${item.id}'),
            trailing: Obx(() {
              bool isFavorite = favoriteViewModel.favorites
                  .any((favoriteItem) => favoriteItem.id == item.id);
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  favoriteViewModel.toggleFavorite(item); // Item 객체 사용
                },
              );
            }),
          );
        },
      ),
    );
  }
}
