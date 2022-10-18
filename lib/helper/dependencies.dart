import 'package:get/get.dart';
import 'package:vogg/data/api/api_client.dart';

import '../controllers/popular_product_controller.dart';
import '../data/repository/popular_product_repo.dart';

Future<void> init() async {
  //api clint
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
