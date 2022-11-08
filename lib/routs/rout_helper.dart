import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vogg/pages/cart/cart_page.dart';
import 'package:vogg/pages/food/popular_food_detail.dart';
import 'package:vogg/pages/food/recommended_food_detail.dart';
import 'package:vogg/pages/home/home_page.dart';
import 'package:vogg/pages/home/main_food_page.dart';

class RoutHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommended = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getInitial() => initial;
  static String getPopularFood(int pageId, String page) => '$popularFood?page'
      'Id=$pageId&page=$page';
  static String getRecommended(int pageId, String page) =>
      '$recommended?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage?pageId=$cartPage';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return const HomePage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommended,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return const CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
