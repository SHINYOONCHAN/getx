import 'package:get/get.dart';
import '../models/item.dart';

class FavoriteViewModel extends GetxController {
  RxList<Item> favorites = <Item>[].obs;

  void toggleFavorite(Item item) {
    if (favorites.contains(item)) {
      favorites.remove(item);
    } else {
      favorites.add(item);
    }
  }
}
