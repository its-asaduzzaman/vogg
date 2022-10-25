import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vogg/pages/food/popular_food_detail.dart';
import 'package:vogg/pages/home/main_food_page.dart';

class RoutHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";

  static String getPopularFood() => popularFood;

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => const MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () => const PopularFoodDetail(),
        transition: Transition.fadeIn),
  ];
}
