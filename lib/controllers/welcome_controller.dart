import 'package:get/get.dart';
import 'package:restaurant/pages/home/main_food_page.dart';
import 'package:restaurant/pages/profile_page.dart';
import 'package:restaurant/pages/search_page.dart';
import 'package:restaurant/pages/shop_page.dart';

class WelcomeController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    MainFoodPage(),
    SearchPage(),
    ShopPage(),
    ProfilePage(),
  ];
}
