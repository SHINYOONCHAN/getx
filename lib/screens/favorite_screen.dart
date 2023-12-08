import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/Item_controller.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  FavoritePageState createState() => FavoritePageState();
}

class FavoritePageState extends State<FavoritePage> {
  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('찜된 리스트'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: favoriteController.favorites.length,
          itemBuilder: (context, index) {
            int number = favoriteController.favorites[index];
            return ListTile(
              title: Text('찜된 리스트 $number'),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {
                  favoriteController.toggleFavorite(number);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
