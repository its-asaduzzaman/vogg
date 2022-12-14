import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogg/controllers/cart_controller.dart';
import 'package:vogg/controllers/popular_product_controller.dart';
import 'package:vogg/pages/cart/cart_page.dart';
import 'package:vogg/pages/food/popular_food_detail.dart';
import 'package:vogg/pages/home/main_food_page.dart';
import 'package:vogg/pages/splash/splash_page.dart';
import 'package:vogg/routs/rout_helper.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(
      builder: (_) {
        return GetBuilder<RecommendedProductController>(builder: (_) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            initialRoute: RoutHelper.getSplashPage(),
            getPages: RoutHelper.routes,
          );
        });
      },
    );
  }
}
