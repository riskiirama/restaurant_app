import 'package:get/get.dart';
import 'package:restaurant/pages/food/popular_food_detail.dart';
import 'package:restaurant/pages/home/main_food_page.dart';
import 'package:restaurant/pages/home/welcome_page.dart';
import 'package:restaurant/pages/splash_page.dart';

class RouteHelper {
  static String splash = '/';
  static String welcome = '/welcome';
  static String home = '/home';
  static String popularFood = '/popular-food';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: welcome, page: () => WelcomePage()),
    GetPage(name: home, page: () => MainFoodPage()),
    GetPage(name: popularFood, page: () => PopularFoodDetail()),
  ];
}
