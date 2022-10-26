import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vogg/pages/food/popular_food_detail.dart';
import 'package:vogg/pages/food/recommended_food_detail.dart';
import 'package:vogg/pages/home/main_food_page.dart';

class RoutHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommended = "/recommended-food";

  static String getInitial() => initial;
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommended(int pageId) => '$recommended?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return const MainFoodPage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommended,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
  ];
}
