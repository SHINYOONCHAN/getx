import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_models/item_controller.dart';
import '../models/item.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  FavoritePageState createState() => FavoritePageState();
}

class FavoritePageState extends State<FavoritePage> {
  final FavoriteViewModel favoriteViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('찜 리스트'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: favoriteViewModel.favorites.length,
          itemBuilder: (context, index) {
            Item item = favoriteViewModel.favorites[index];
            return ListTile(
              title: Text('찜된 리스트 ${item.id}'),
              trailing: IconButton(
                icon: const Icon(Icons.favorite, color: Colors.red),
                onPressed: () {
                  favoriteViewModel.toggleFavorite(item);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
