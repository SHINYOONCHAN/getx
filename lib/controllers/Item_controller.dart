import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<int> favorites = <int>[].obs;

  void toggleFavorite(int number) {
    if (favorites.contains(number)) {
      favorites.remove(number);
    } else {
      favorites.add(number);
    }
  }
}
